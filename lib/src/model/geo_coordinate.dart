import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/geo_coordinate.freezed.dart';

@freezed
class GeoCoordinate with _$GeoCoordinate {
  const GeoCoordinate._();

  const factory GeoCoordinate({
    required double lat,
    required double long,
  }) = _GeoCoordinate;

  @override
  String toString() => '($lat, $long)';
}
