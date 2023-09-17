import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo_coordinate.dart';

class GeoCoordinateConverter
    implements JsonConverter<GeoCoordinate, List<double>> {
  const GeoCoordinateConverter();

  @override
  GeoCoordinate fromJson(List<double> json) =>
      GeoCoordinate(lat: json[0], long: json[1]);

  @override
  List<double> toJson(GeoCoordinate object) =>
      throw UnimplementedError('toJson not implemented');
}
