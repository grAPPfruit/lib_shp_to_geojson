import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_shp_to_geojson/src/local/model/local_geo_geometry.dart';
import 'package:lib_shp_to_geojson/src/local/model/local_geo_geometry_converter.dart';

part 'local_geo_feature.freezed.dart';
part 'local_geo_feature.g.dart';

@freezed
class LocalGeoFeature with _$LocalGeoFeature {
  const factory LocalGeoFeature({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'properties') Map<String, dynamic>? properties,
    @JsonKey(name: 'geometry')
    @LocalGeoGeometryConverter()
        LocalGeoGeometry? geometry,
  }) = _LocalGeoFeature;

  factory LocalGeoFeature.fromJson(Map<String, dynamic> json) =>
      _$LocalGeoFeatureFromJson(json);
}
