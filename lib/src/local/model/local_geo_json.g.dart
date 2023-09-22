// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_geo_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalGeoJson _$$_LocalGeoJsonFromJson(Map<String, dynamic> json) =>
    _$_LocalGeoJson(
      type: json['type'] as String?,
      boundingBox: (json['bbox'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => LocalGeoFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LocalGeoJsonToJson(_$_LocalGeoJson instance) =>
    <String, dynamic>{
      'type': instance.type,
      'bbox': instance.boundingBox,
      'features': instance.features,
    };
