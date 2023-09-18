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
        .map((e) => GeoCoordinate(lat: e[0], long: e[1]))
        .toList(growable: false);
  }

  @override
  List<List<List<double>>> toJson(GeoGeometry object) =>
      throw UnimplementedError('toJson not implemented');
}

// chat gpt says:
// import 'package:proj4dart/proj4dart.dart';
//
// void main() {
//   // Define the UTM projection and WGS84 projection
//   final utmProjection = Projection.add(Projection.getByName('EPSG:32633'));
//   final wgs84Projection = Projection.add(Projection.getByName('EPSG:4326'));
//
//   // UTM coordinates (zone, easting, northing)
//   final utmCoordinates = UTM.fromUTM(zone: 33, easting: 500000.0, northing: 4649776.0);
//
//   // Convert UTM to decimal degrees
//   final wgs84Coordinates = utmProjection.transform(wgs84Projection, utmCoordinates);
//
//   // Print the result
//   print('Latitude: ${wgs84Coordinates.lat}');
//   print('Longitude: ${wgs84Coordinates.lon}');
// }
