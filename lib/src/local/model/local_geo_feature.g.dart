// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_geo_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalGeoFeature _$$_LocalGeoFeatureFromJson(Map<String, dynamic> json) =>
    _$_LocalGeoFeature(
      type: json['type'] as String?,
      properties: json['properties'] as Map<String, dynamic>?,
      geometry: const LocalGeoGeometryConverter().fromJson(json['geometry']),
    );

Map<String, dynamic> _$$_LocalGeoFeatureToJson(_$_LocalGeoFeature instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
      'geometry': const LocalGeoGeometryConverter().toJson(instance.geometry),
    };
