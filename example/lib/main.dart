import 'package:example/app.dart';
import 'package:example/gen/assets.gen.dart';
import 'package:example/util/asset_utils.dart';
import 'package:flutter/material.dart';
import 'package:lib_shp_to_geojson/shp_to_geojson.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _readZipArchives();

  runApp(const App());
}

Future<void> _readZipArchives() async {
  final List<GeoJson> geoJsons;

  final single = await AssetUtils.getFileFromAssets(Assets.elanShp);
  geoJsons = await zipToGeoJson(single);

  // final multi = await AssetUtils.getFileFromAssets(Assets.multi);
  // geoJsons = await zipToGeoJson(multi);

  // final subFolders = await AssetUtils.getFileFromAssets(Assets.subFolders);
  // geoJsons = await zipToGeoJson(subFolders);

  // final broken = await AssetUtils.getFileFromAssets(Assets.missingDbf);
  // geoJsons = await zipToGeoJson(broken);

  // final field1 = await AssetUtils.getFileFromAssets(Assets.field1);
  // geoJsons = await zipToGeoJson(field1);

  print('--- result ---');
  print(geoJsons);
  print('found ${geoJsons.length} GeoJson objects');
  print('--------------');
}
