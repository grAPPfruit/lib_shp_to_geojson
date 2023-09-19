import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo_feature.dart';

part 'generated/geo_json.freezed.dart';

part 'generated/geo_json.g.dart';

/// A subset of the GeoJson spec, see https://datatracker.ietf.org/doc/html/rfc7946
@freezed
class GeoJson with _$GeoJson {
  const GeoJson._();

  const factory GeoJson({
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'bbox') List<double>? boundingBox,
    @JsonKey(name: 'features') List<GeoFeature>? features,
  }) = _GeoJson;

  factory GeoJson.fromJson(Map<String, dynamic> json) =>
      _$GeoJsonFromJson(json);
}
