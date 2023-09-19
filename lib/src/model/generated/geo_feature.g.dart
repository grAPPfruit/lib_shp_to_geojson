// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../geo_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoFeature _$$_GeoFeatureFromJson(Map<String, dynamic> json) =>
    _$_GeoFeature(
      type: json['type'] as String?,
      properties: json['properties'] as Map<String, dynamic>?,
      geometry: const GeoGeometryConverter().fromJson(json['geometry']),
    );

Map<String, dynamic> _$$_GeoFeatureToJson(_$_GeoFeature instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'geometry': _$JsonConverterToJson<dynamic, GeoGeometry>(
          instance.geometry, const GeoGeometryConverter().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
