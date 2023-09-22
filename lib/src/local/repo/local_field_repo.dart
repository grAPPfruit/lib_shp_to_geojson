import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:lib_shp_to_geojson/ext/directory_ext.dart';
import 'package:lib_shp_to_geojson/ext/file_system_entity_ext.dart';
import 'package:lib_shp_to_geojson/shp_to_geojson.dart';
import 'package:lib_shp_to_geojson/src/domain/model.dart';
import 'package:lib_shp_to_geojson/src/local/mapper/local_geo_json_mapper.dart';
import 'package:lib_shp_to_geojson/src/local/model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shapefile/shapefile.dart' as shapefile;

// TODO: replace debugPrint with our logging solution
class LocalFieldRepo {
  static final filesToKeep = ['shp', 'dbf', 'prj'];

  final LocalGeoJsonMapper _mapper;

  LocalFieldRepo(this._mapper);

  Future<List<Field>> importZipFile() async {
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
    final zipFile = File(zipFilePath);
    final extractionDir = await _extractZipToTempDir(zipFile);
    _flattenDirectory(extractionDir);
    _cleanupFolders(extractionDir);
    _deleteSingleShpAndDbfFiles(extractionDir);
    final localGeoJsons = await _zipToGeoJson(zipFile, extractionDir);
    debugPrint('>>> found ${localGeoJsons.length} GeoJsons');
    return localGeoJsons
        .map(_mapper.map)
        .expand((e) => e)
        .toList(growable: false);
  }

  Future<List<LocalGeoJson>> _zipToGeoJson(
    File zipFile,
    Directory extractionDir,
  ) async {
    final shpFiles = extractionDir.getFilesWithEnding('shp');
    final dbfFiles = extractionDir.getFilesWithEnding('dbf');

    final List<LocalGeoJson> geoJsons = [];

    for (final shpFile in shpFiles) {
      final File dbfFile;
      try {
        // at this point we are sure the dbfFile exists but the compiler does not
        dbfFile =
            dbfFiles.firstWhere((dbfFile) => dbfFile.name == shpFile.name);
      } catch (e) {
        continue;
      }

      final geoJson = await _parseShpDbfPair(shpFile, dbfFile);
      if (geoJson != null) {
        geoJsons.add(geoJson);
      }
    }

    return geoJsons;
  }

  Future<Directory> _extractZipToTempDir(File zipFile) async {
    final tempDir = (await getTemporaryDirectory()).path;
    final extractionDir = Directory('$tempDir/${zipFile.name}');
    if (extractionDir.existsSync()) {
      extractionDir.deleteSync(recursive: true);
    }
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

  Future<LocalGeoJson?> _parseShpDbfPair(File shpFile, File dbfFile) async {
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
      return null;
    }

    final geoJson = LocalGeoJson.fromJson(featureCollection);

    final hasFeatures = geoJson.features?.isNotEmpty ?? false;
    if (!hasFeatures) {
      debugPrint('${shpFile.name} is missing features - skipping');
      return null;
    }

    return geoJson;
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

  void _deleteSingleShpAndDbfFiles(Directory dir) {
    final shpFiles = dir.getFilesWithEnding('shp');
    final dbfFiles = dir.getFilesWithEnding('dbf');

    for (final shpFile in shpFiles) {
      try {
        dbfFiles.firstWhere((dbfFile) => dbfFile.name == shpFile.name);
      } catch (e) {
        debugPrint(
          '${shpFile.nameWithExt} is missing matching dbf file - deleting',
        );
        shpFile.deleteSync();
      }
    }
    for (final dbfFile in dbfFiles) {
      try {
        shpFiles.firstWhere((shpFile) => dbfFile.name == shpFile.name);
      } catch (e) {
        debugPrint(
          '${dbfFile.nameWithExt} is missing matching shp file - deleting',
        );
        dbfFile.deleteSync();
      }
    }
  }
}
