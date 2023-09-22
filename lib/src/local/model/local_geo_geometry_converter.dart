import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_shp_to_geojson/src/local/model.dart';

class LocalGeoGeometryConverter
    implements JsonConverter<LocalGeoGeometry?, dynamic> {
  const LocalGeoGeometryConverter();

  @override
  LocalGeoGeometry? fromJson(dynamic json) {
    if (json['type'] != 'Polygon') {
      return null;
    }

    try {
      return LocalGeoGeometry.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  @override
  dynamic toJson(LocalGeoGeometry? object) => throw UnimplementedError();
}
