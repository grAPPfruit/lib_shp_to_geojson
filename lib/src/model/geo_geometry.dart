import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo_shape.dart';

part 'generated/geo_geometry.freezed.dart';

/// A Geometry object represents points, curves, and surfaces in
/// coordinate space. Every Geometry object is a GeoJSON object no
/// matter where it occurs in a GeoJSON text.
///
/// one of seven types:
/// "Point", "MultiPoint", "LineString", "MultiLineString", "Polygon",
/// "MultiPolygon", and "GeometryCollection"
///
/// currently only "Polygon" is supported
@freezed
class GeoGeometry with _$GeoGeometry {
  const GeoGeometry._();

  /// example:
  ///
  /// {
  ///   "type":"Polygon",
  ///   "coordinates":[
  ///     [[x0,y0], [x1,y1], [x2,y2], [x3,y3], [x0,y0]], // border 1
  ///     [[x4,y4], [x5,y5], [x6,y6], [x4,y4]],          // hole 1
  ///     [[x7,y7], [x8,y8], [x9,y9], [x7,y7]],          // hole 2
  ///   ]
  /// }
  const factory GeoGeometry.polygon({
    required GeoShape border,
    List<GeoShape>? holes,
  }) = _Polygon;

  @override
  String toString() =>
      'Polygon(${border.coords.length - 1} points${holes?.isEmpty ?? true ? ')' : ', ${holes!.length} holes)'}';
}
