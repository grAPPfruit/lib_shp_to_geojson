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
          final mapper = LocalGeoJsonMapper();
          final localFieldRepo = LocalFieldRepo(mapper);
          final fields = await localFieldRepo.importZipFile();
          print('>>> found ${fields.length} fields');
          print('$fields');
        },
        child: const Text('open zip file'),
      ),
    );
  }
}
