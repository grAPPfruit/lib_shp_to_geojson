import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo_coordinate.dart';

part 'geo_shape.freezed.dart';

@freezed
class GeoShape with _$GeoShape {
  const factory GeoShape({
    required List<GeoCoordinate> coords,
  }) = _GeoShape;
}
