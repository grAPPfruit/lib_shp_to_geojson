import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo_geometry.dart';
import 'geo_geometry_converter.dart';

part 'generated/geo_feature.freezed.dart';

part 'generated/geo_feature.g.dart';

@freezed
class GeoFeature with _$GeoFeature {
  const GeoFeature._();

  const factory GeoFeature({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'properties') Map<String, dynamic>? properties,
    @JsonKey(name: 'geometry') @GeoGeometryConverter() GeoGeometry? geometry,
  }) = _GeoFeature;

  factory GeoFeature.fromJson(Map<String, dynamic> json) =>
      _$GeoFeatureFromJson(json);
}
