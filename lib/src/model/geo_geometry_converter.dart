import 'package:freezed_annotation/freezed_annotation.dart';

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
    if (json['coordinates'] == null) {
      throw ArgumentError("'coordinates' is null");
    }

    final border = _mapBorder(json);

    final holes = <GeoShape>[];
    if (json['coordinates'].length > 1) {
      for (var i = 1; i < json['coordinates'].length; i++) {
        holes.add(GeoShape(coords: json['coordinates'][i]));
      }
    }

    return GeoGeometry.polygon(
      border: border,
      holes: holes,
    );
  }

  GeoShape _mapBorder(json) {
    final borderCoordsJson = json['coordinates'][0] as List<List<double>>;
    final coords = _mapCoords(borderCoordsJson);
    return GeoShape(coords: coords);
  }

  List<GeoCoordinate> _mapCoords(List<List<double>> borderCoordsJson) {
    return borderCoordsJson
        .map((e) => GeoCoordinate(lat: e[0], long: e[1]))
        .toList(growable: false);
  }

  @override
  List<List<List<double>>> toJson(GeoGeometry object) =>
      throw UnimplementedError('toJson not implemented');
}
