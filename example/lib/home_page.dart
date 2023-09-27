import 'package:flutter/material.dart';
import 'package:lib_shp_to_geojson/shp_to_geojson.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shapefile Demo')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          final propertyFieldNameMapper = LocalPropertyFieldNameMapper();
          final geoJsonMapper = LocalGeoJsonMapper(propertyFieldNameMapper);
          final resultMapper = LocalShpFileMapper(geoJsonMapper);
          final localFieldRepo = LocalFieldRepo(resultMapper);

          final importResult = await localFieldRepo.importShpFilesFromZip();
          print(
              '${importResult.totalFeatures} => ${importResult.usableFields} / ${importResult.unusableFeatures}');

          if (importResult.hasShpFiles) {
            for (final shpFile in importResult.shpFiles!) {
              print(
                  '>>> ${shpFile.fileName} has ${shpFile.usableFields} usable fields');
              if (shpFile.hasFields) {
                print(' >>> ${shpFile.fields!.first.name}');
              }
            }
          }
        },
        child: const Text('open zip file'),
      ),
    );
  }
}
