import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo_geometry.dart';
import 'geo_geometry_converter.dart';

part 'geo_feature.freezed.dart';

part 'geo_feature.g.dart';

@freezed
class GeoFeature with _$GeoFeature {
  const factory GeoFeature({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'properties') Map<String, dynamic>? properties,
    @JsonKey(name: 'geometry') @GeoGeometryConverter() GeoGeometry? geometry,
  }) = _GeoFeature;

  factory GeoFeature.fromJson(Map<String, dynamic> json) =>
      _$GeoFeatureFromJson(json);
}
