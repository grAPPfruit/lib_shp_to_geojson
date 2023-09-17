import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo_coordinate.dart';
import 'geo_geometry.dart';
import 'geo_shape.dart';

class GeoGeometryConverter implements JsonConverter<GeoGeometry, dynamic> {
  const GeoGeometryConverter();

  @override
  GeoGeometry fromJson(dynamic json) {
    print(jsonEncode(json));

    if (json['type'] != 'Polygon') {
      throw UnsupportedError('Only Polygon is supported');
    }
    if (json['coordinates']?.isEmpty ?? true) {
      throw ArgumentError("'coordinates' is null or empty");
    }

    final jsonShapes = json['coordinates'] as List<List<List<double>>>;
    print('>>> ${jsonShapes.length}: ${jsonShapes[0].length}');

    final border = _mapJsonShape(jsonShapes[0], 0);

    final holes = <GeoShape>[];
    if (json['coordinates'].length > 1) {
      for (var i = 1; i < json['coordinates'].length; i++) {
        final hole = _mapJsonShape(json, i);
        holes.add(hole);
      }
    }

    return GeoGeometry.polygon(
      border: border,
      holes: holes,
    );
  }

  GeoShape _mapJsonShape(List<List<double>> jsonShape, int index) {
    return GeoShape(coords: _coordsToGeoCoords(jsonShape));
  }

  List<GeoCoordinate> _coordsToGeoCoords(List<List<double>> borderCoordsJson) {
    return borderCoordsJson
        .map((e) => GeoCoordinate(lat: e[0], long: e[1]))
        .toList(growable: false);
  }

  @override
  List<List<List<double>>> toJson(GeoGeometry object) =>
      throw UnimplementedError('toJson not implemented');
}
