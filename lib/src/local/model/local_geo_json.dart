import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_shp_to_geojson/src/local/model/local_geo_feature.dart';

part 'local_geo_json.freezed.dart';
part 'local_geo_json.g.dart';

/// A subset of the GeoJson spec, see https://datatracker.ietf.org/doc/html/rfc7946
/// with a little bit of custom meta information sprinkled in
@freezed
class LocalGeoJson with _$LocalGeoJson {
  const factory LocalGeoJson({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'bbox') List<double>? boundingBox,
    @JsonKey(name: 'features') List<LocalGeoFeature>? features,
  }) = _LocalGeoJson;

  factory LocalGeoJson.fromJson(Map<String, dynamic> json) =>
      _$LocalGeoJsonFromJson(json);
}
