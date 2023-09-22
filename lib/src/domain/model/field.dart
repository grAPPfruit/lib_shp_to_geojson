import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_shp_to_geojson/src/domain/model/polygon.dart';

part 'field.freezed.dart';

@freezed
class Field with _$Field {
  const Field._();

  const factory Field({
    String? name,
    required Polygon border,
    required List<Polygon> holes,
  }) = _Field;

  bool get hasName => name?.isNotEmpty == true;

  bool get hasHoles => holes.isNotEmpty;
}
