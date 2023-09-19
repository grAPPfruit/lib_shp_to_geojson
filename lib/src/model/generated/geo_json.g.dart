// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../geo_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoJson _$$_GeoJsonFromJson(Map<String, dynamic> json) => _$_GeoJson(
      type: json['type'] as String,
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => GeoFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GeoJsonToJson(_$_GeoJson instance) =>
    <String, dynamic>{
      'type': instance.type,
      'bbox': instance.boundingBox,
      'features': instance.features,
    };
