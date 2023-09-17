import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:example/app.dart';
import 'package:example/gen/assets.gen.dart';
import 'package:example/util/asset_utils.dart';
import 'package:flutter/material.dart';
import 'package:lib_shp_to_geojson/lib_shp_to_geojson.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shapefile/shapefile.dart' as shapefile;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _readZipArchives();

  runApp(const App());
}

Future<void> _readZipArchives() async {
  // final single = await AssetUtils.getFileFromAssets(Assets.single);
  // _handleZip(single);

  // final multi = await AssetUtils.getFileFromAssets(Assets.multi);
  // _handleZip(multi);

  final multi = await AssetUtils.getFileFromAssets(Assets.withSubfolders);
  _handleZip(multi);

  // final broken = await AssetUtils.getFileFromAssets(Assets.missingDbf);
  // _handleZip(broken);
}

Future<String> get _getTempDir async => (await getTemporaryDirectory()).path;

extension on FileSystemEntity {
  String get name => nameWithExt.substring(0, nameWithExt.lastIndexOf('.'));

  String get nameWithExt => uri.pathSegments.last;
}

extension on Directory {
  List<File> getFilesWithEnding(String ending) => listSync()
      .where((entity) => entity is File && entity.path.endsWith(ending))
      .cast<File>()
      .toList();
}

Future<void> _handleZip(File zipFile) async {
  final tempDir = await _getTempDir;
  final extractionDir = Directory('$tempDir/${zipFile.name}');
  extractFileToDisk(zipFile.path, extractionDir.path);
  print('>>> extractionDir ${extractionDir.path}');

  _flattenDirectory(extractionDir);
  _cleanupFolders(extractionDir);
  _deleteShpFilesWhereDbfFileIsMissing(extractionDir);

  // check if every shp file has a matching dbf file
  final shpFiles = extractionDir.getFilesWithEnding('shp');
  final dbfFiles = extractionDir.getFilesWithEnding('dbf');

  for (final shpFile in shpFiles) {
    final dbfFile =
        dbfFiles.where((dbfFile) => dbfFile.name == shpFile.name).firstOrNull;
    // after all checks, the dbf file has to exist now, but just to be sure
    if (dbfFile == null) {
      continue;
    }

    final shpStream = shpFile.openRead().asBroadcastStream();
    final dbfStream = dbfFile.openRead().asBroadcastStream();

    final Map<String, dynamic> featureCollection;
    try {
      featureCollection =
          await shapefile.featureCollection(shpStream, dbf: dbfStream);
    } catch (e) {
      print(
          'error when parsing ${shpFile.nameWithExt} or ${dbfFile.nameWithExt}');
      continue;
    }

    print('--- geo json ---');
    final geoJson = GeoJson.fromJson(featureCollection);
    print('$geoJson');
    print('---');
  }
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

void _deleteShpFilesWhereDbfFileIsMissing(Directory dir) {
  final shpFiles = dir.getFilesWithEnding('shp');
  final dbfFiles = dir.getFilesWithEnding('dbf');

  for (final shpFile in shpFiles) {
    final dbfFile =
        dbfFiles.where((dbfFile) => dbfFile.name == shpFile.name).firstOrNull;
    if (dbfFile == null) {
      print('${shpFile.nameWithExt} is missing matching dbf file - deleting');
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
