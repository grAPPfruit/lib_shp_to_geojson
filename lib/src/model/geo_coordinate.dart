import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_coordinate.freezed.dart';
part 'geo_coordinate.g.dart';

@freezed
class GeoCoordinate with _$GeoCoordinate {
  const GeoCoordinate._();

  const factory GeoCoordinate({
    required double lat,
    required double long,
  }) = _GeoCoordinate;

  factory GeoCoordinate.fromJson(Map<String, dynamic> json) =>
      _$GeoCoordinateFromJson(json);

  @override
  String toString() => '($lat, $long)';
}
