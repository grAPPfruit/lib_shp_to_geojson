import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proj4dart/proj4dart.dart';

import 'geo_coordinate.dart';

class GeoCoordinateConverter
    implements JsonConverter<GeoCoordinate, List<double>> {
  const GeoCoordinateConverter();

  @override
  GeoCoordinate fromJson(List<double> json) {
    if (json.length != 2) {
      throw ArgumentError('json must have 2 elements');
    }

    final lat = json[0];
    final long = json[1];

    final isValidLat = lat >= -90 && lat <= 90;
    final isValidLong = long >= -180 && long <= 180;
    if (isValidLat && isValidLong) {
      return GeoCoordinate(lat: lat, long: long);
    }

    final projPoint = _transformToLatLng(lat, long);
    return GeoCoordinate(lat: projPoint.x, long: projPoint.y);
  }

  Point _transformToLatLng(double lat, double long) {
    final point = Point(x: lat, y: long);
    final projSrc = Projection.WGS84;
    final projDst = Projection.GOOGLE;
    final projPoint = projDst.transform(projSrc, point);
    return projPoint;
  }

  @override
  List<double> toJson(GeoCoordinate object) =>
      throw UnimplementedError('toJson not implemented');
}
