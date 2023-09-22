// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_geo_geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalGeoGeometry _$$_LocalGeoGeometryFromJson(Map<String, dynamic> json) =>
    _$_LocalGeoGeometry(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$_LocalGeoGeometryToJson(_$_LocalGeoGeometry instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
