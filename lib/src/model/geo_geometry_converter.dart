import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_shp_to_geojson/src/model/geo_coordinate_converter.dart';

import 'geo_coordinate.dart';
import 'geo_geometry.dart';
import 'geo_shape.dart';

class GeoGeometryConverter implements JsonConverter<GeoGeometry, dynamic> {
  const GeoGeometryConverter();

  @override
  GeoGeometry fromJson(dynamic json) {
    if (json['type'] != 'Polygon') {
      throw UnsupportedError('Only Polygon is supported');
    }
    if (json['coordinates']?.isEmpty ?? true) {
      throw ArgumentError("'coordinates' is null or empty");
    }

    final jsonShapes = json['coordinates'] as List<List<List<double>>>;

    final border = _mapJsonShape(jsonShapes[0]);

    final holes = <GeoShape>[];
    if (json['coordinates'].length > 1) {
      for (var i = 1; i < jsonShapes.length; i++) {
        final hole = _mapJsonShape(jsonShapes[i]);
        holes.add(hole);
      }
    }

    return GeoGeometry.polygon(
      border: border,
      holes: holes,
    );
  }

  GeoShape _mapJsonShape(List<List<double>> jsonShapes) {
    return GeoShape(coords: _coordsToGeoCoords(jsonShapes));
  }

  List<GeoCoordinate> _coordsToGeoCoords(List<List<double>> borderCoordsJson) {
    return borderCoordsJson
        .map((e) => const GeoCoordinateConverter().fromJson(e))
        .toList(growable: false);
  }

  @override
  List<List<List<double>>> toJson(GeoGeometry object) =>
      throw UnimplementedError('toJson not implemented');
}
