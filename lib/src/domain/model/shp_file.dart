import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_shp_to_geojson/src/domain/model/field.dart';

part 'shp_file.freezed.dart';

@freezed
class ShpFile with _$ShpFile {
  const factory ShpFile({
    required String fileName,
    required int totalFeatures,
    List<Field>? fields,
  }) = _ShpFile;

  const ShpFile._();

  int get usableFields => fields?.length ?? 0;

  int get unusableFeatures => totalFeatures - usableFields;

  bool get hasFields => fields?.isNotEmpty ?? false;
}
