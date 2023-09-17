import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo_coordinate.dart';
import 'geo_coordinate_converter.dart';

part 'geo_shape.freezed.dart';

@freezed
class GeoShape with _$GeoShape {
  const factory GeoShape({
    @GeoCoordinateConverter() required List<GeoCoordinate> coords,
  }) = _GeoShape;
}
