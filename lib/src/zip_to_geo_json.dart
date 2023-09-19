import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:flutter/foundation.dart';
import 'package:lib_shp_to_geojson/shp_to_geojson.dart';
import 'package:lib_shp_to_geojson/src/ext/directory_ext.dart';
import 'package:lib_shp_to_geojson/src/ext/file_system_entity_ext.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shapefile/shapefile.dart' as shapefile;

Future<List<GeoJson>> zipToGeoJson(File zipFile) async {
  final extractionDir = await _extractZipToFlatDir(zipFile);

  _cleanupFolders(extractionDir);
  _deleteShpFilesWhereDbfFileIsMissing(extractionDir);

  // check if every shp file has a matching dbf file
  final shpFiles = extractionDir.getFilesWithEnding('shp');
  final dbfFiles = extractionDir.getFilesWithEnding('dbf');

  final List<GeoJson> geoJsons = [];

  for (final shpFile in shpFiles) {
    final dbfFile =
        dbfFiles.where((dbfFile) => dbfFile.name == shpFile.name).firstOrNull;
    // at this point we are sure the dbfFile exists but the compiler does not
    if (dbfFile == null) {
      continue;
    }

    final geoJson = await _parseShpDbfPair(shpFile, dbfFile);
    if (geoJson != null) {
      geoJsons.add(geoJson);
    }
  }

  return geoJsons;
}

Future<Directory> _extractZipToFlatDir(File zipFile) async {
  final tempDir = (await getTemporaryDirectory()).path;
  final extractionDir = Directory('$tempDir/${zipFile.name}');
  extractFileToDisk(zipFile.path, extractionDir.path);
  _flattenDirectory(extractionDir);
  return extractionDir;
}

void _flattenDirectory(Directory dir) {
  final entities = dir.listSync(recursive: true, followLinks: false);
  for (final entity in entities) {
    if (entity is File && entity.path != dir.path) {
      final targetFile = '${dir.path}/${entity.nameWithExt}';
      entity.copySync(targetFile);
    }
  }
}

Future<GeoJson?> _parseShpDbfPair(File shpFile, File dbfFile) async {
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
    debugPrint(
      'error parsing ${shpFile.nameWithExt} or ${dbfFile.nameWithExt}: $e',
    );
    return null;
  }

  final geoJson = GeoJson.fromJson(featureCollection);

  final hasFeatures = geoJson.features?.isNotEmpty ?? false;
  if (!hasFeatures) {
    debugPrint('${shpFile.name} is missing features - skipping');
    return null;
  }

  return geoJson;
}

void _deleteShpFilesWhereDbfFileIsMissing(Directory dir) {
  final shpFiles = dir.getFilesWithEnding('shp');
  final dbfFiles = dir.getFilesWithEnding('dbf');

  for (final shpFile in shpFiles) {
    final dbfFile =
        dbfFiles.where((dbfFile) => dbfFile.name == shpFile.name).firstOrNull;
    if (dbfFile == null) {
      debugPrint(
        '${shpFile.nameWithExt} is missing matching dbf file - deleting',
      );
      shpFile.deleteSync();
      continue;
    }
  }
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
      if (!entity.nameWithExt.endsWith('.shp') &&
          !entity.nameWithExt.endsWith('.dbf')) {
        entity.deleteSync();
      }
    }
  }
}
