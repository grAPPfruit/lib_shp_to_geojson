import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_geo_geometry.freezed.dart';
part 'local_geo_geometry.g.dart';

@freezed
class LocalGeoGeometry with _$LocalGeoGeometry {
  const factory LocalGeoGeometry({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'coordinates') List<List<List<double>>>? coordinates,
  }) = _LocalGeoGeometry;

  factory LocalGeoGeometry.fromJson(Map<String, dynamic> json) =>
      _$LocalGeoGeometryFromJson(json);
}
