import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_shp_to_geojson/src/domain/model/lat_long.dart';

part 'polygon.freezed.dart';

@freezed
class Polygon with _$Polygon {
  const factory Polygon({
    required List<LatLong> points,
  }) = _Polygon;
}
