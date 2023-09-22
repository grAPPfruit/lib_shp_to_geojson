import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_coordinate.freezed.dart';

@freezed
class GeoCoordinate with _$GeoCoordinate {
  const factory GeoCoordinate({
    required double long,
    required double lat,
  }) = _GeoCoordinate;
}
