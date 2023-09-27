import 'package:lib_shp_to_geojson/shp_to_geojson.dart';
import 'package:lib_shp_to_geojson/src/domain/model/field.dart';
import 'package:lib_shp_to_geojson/src/domain/model/shp_file.dart';
import 'package:lib_shp_to_geojson/src/local/model/local_shp_file.dart';

class LocalShpFileMapper {
  final LocalGeoJsonMapper _geoJsonMapper;

  LocalShpFileMapper(this._geoJsonMapper);

  ShpFile map(LocalShpFile from) {
    final List<Field> fields;
    if (from.geoJson == null || from.esriProjection == null) {
      fields = List.empty(growable: false);
    } else {
      fields = _geoJsonMapper
          .map(from.geoJson!, from.esriProjection!)
          .toList(growable: false);
    }

    return ShpFile(
      fileName: from.shpFileName,
      totalFeatures: from.totalFeatures,
      fields: fields,
    );
  }
}
