import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_shp_to_geojson/src/local/model.dart';

part 'local_shp_file.freezed.dart';

@freezed
class LocalShpFile with _$LocalShpFile {
  const factory LocalShpFile({
    required String shpFileName,
    @Default(0) int totalFeatures,
    String? esriProjection,
    LocalGeoJson? geoJson,
  }) = _LocalShpFile;
}
