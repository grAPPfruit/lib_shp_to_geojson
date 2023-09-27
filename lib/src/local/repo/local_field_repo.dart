import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:lib_shp_to_geojson/ext/directory_ext.dart';
import 'package:lib_shp_to_geojson/ext/file_system_entity_ext.dart';
import 'package:lib_shp_to_geojson/src/domain/model/shp_import_result.dart';
import 'package:lib_shp_to_geojson/src/local/mapper/local_shp_file_mapper.dart';
import 'package:lib_shp_to_geojson/src/local/model.dart';
import 'package:lib_shp_to_geojson/src/local/model/local_shp_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shapefile/shapefile.dart' as shapefile;

// TODO: replace debugPrint with our logging solution
class LocalFieldRepo {
  static final filesToKeep = ['shp', 'dbf', 'prj'];

  final LocalShpFileMapper _mapper;

  LocalFieldRepo(this._mapper);

  Future<ShpImportResult> importShpFilesFromZip() async {
    final pickerResult = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ['zip'],
      dialogTitle: 'Pick a zip file',
      withData: false,
      withReadStream: false,
    );

    if (pickerResult == null || pickerResult.files.isEmpty) {
      throw Exception('No files picked or file picker was canceled');
    }

    final zipFilePath = pickerResult.files.first.path!;
    final extractionDir = await _extractZipToTempDir(zipFilePath);
    _flattenDirectory(extractionDir);
    _cleanupFolders(extractionDir);
    final results = await _getResults(extractionDir);
    return ShpImportResult(
      shpFiles: results.map(_mapper.map).toList(growable: false),
    );
  }

  Future<List<LocalShpFile>> _getResults(Directory extractionDir) async {
    final List<LocalShpFile> results = [];

    final shpFiles = extractionDir.getFilesWithEnding('shp');
    for (final shpFile in shpFiles) {
      final shpStream = shpFile.openRead();

      final dbfFile = _getMatchingDbfFile(shpFile);
      final prjFile = _getMatchingPrjFile(shpFile);
      if (dbfFile == null || prjFile == null) {
        final totalFeatures = await _getTotalFeatureCount(shpStream);
        // increase total fields count by the ones contained in the shp which do not have a matching dbf
        results.add(LocalShpFile(
          shpFileName: shpFile.name,
          totalFeatures: totalFeatures,
        ));
        continue;
      }

      // if there is a dbf file, then parse the shp/dbf pair
      final importResult = await _parseShpFile(shpFile);
      results.add(importResult);
    }
    return results;
  }

  Future<int> _getTotalFeatureCount(Stream<List<int>> shpStream) async {
    try {
      final featureCollection = await shapefile.featureCollection(
        shpStream,
        encoding: const Utf8Codec(allowMalformed: true),
      );
      final features = featureCollection['features'] as List<dynamic>;
      return features.length;
    } catch (e) {
      debugPrint('error parsing shp file: $e');
      return 0;
    }
  }

  File? _getMatchingDbfFile(File shpFile) => _getMatchingFile(shpFile, '.dbf');

  File? _getMatchingPrjFile(File shpFile) => _getMatchingFile(shpFile, '.prj');

  File? _getMatchingFile(File shpFile, String fileExt) {
    final dbfFiles = shpFile.parent.getFilesWithEnding(fileExt);
    try {
      // at this point we are sure the dbfFile exists but the compiler does not
      return dbfFiles.firstWhere((dbfFile) => dbfFile.name == shpFile.name);
    } catch (e) {
      return null;
    }
  }

  Future<Directory> _extractZipToTempDir(String zipFilePath) async {
    final zipFile = File(zipFilePath);
    final tempDir = (await getTemporaryDirectory()).path;
    final extractionDir = Directory('$tempDir/${zipFile.name}');
    if (extractionDir.existsSync()) {
      extractionDir.deleteSync(recursive: true);
    }
    extractionDir.createSync(recursive: true);
    extractFileToDisk(zipFile.path, extractionDir.path);
    return extractionDir;
  }

  void _flattenDirectory(Directory dir) {
    final entities = dir.listSync(recursive: true, followLinks: false);
    for (final entity in entities) {
      if (entity is File && entity.parent.path != dir.path) {
        final targetFile = '${dir.path}/${entity.nameWithExt}';
        entity.copySync(targetFile);
      }
    }
  }

  Future<LocalShpFile> _parseShpFile(File shpFile) async {
    final dbfFile = _getMatchingDbfFile(shpFile)!;
    final prjFile = _getMatchingPrjFile(shpFile)!;

    final shpStream = shpFile.openRead();
    final dbfStream = dbfFile.openRead();

    final Map<String, dynamic> featureCollection;
    try {
      featureCollection = await shapefile.featureCollection(
        shpStream,
        dbf: dbfStream,
        encoding: const Utf8Codec(allowMalformed: true),
      );
    } catch (e) {
      debugPrint('error parsing ${shpFile.name}: $e');
      return LocalShpFile(shpFileName: shpFile.name);
    }

    final geoJson = LocalGeoJson.fromJson(featureCollection);

    final hasFeatures = geoJson.features?.isNotEmpty ?? false;
    if (!hasFeatures) {
      debugPrint('${shpFile.name} is missing features - skipping');
      return LocalShpFile(shpFileName: shpFile.name);
    }

    return LocalShpFile(
      shpFileName: shpFile.name,
      totalFeatures: geoJson.features!.length,
      esriProjection: prjFile.readAsStringSync(),
      geoJson: geoJson,
    );
  }

  void _cleanupFolders(Directory dir) {
    final entities = dir.listSync(recursive: true, followLinks: false);
    for (final entity in entities) {
      if (!entity.existsSync()) {
        // could have been already deleted because it was in a subfolder
        continue;
      }
      if (entity is Directory) {
        entity.deleteSync(recursive: true);
      } else {
        final toKeep = filesToKeep.any((e) => entity.nameWithExt.endsWith(e));
        if (!toKeep) {
          entity.deleteSync();
        }
      }
    }
  }
}
