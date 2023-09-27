import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lib_shp_to_geojson/src/domain/model/shp_file.dart';

part 'shp_import_result.freezed.dart';

@freezed
class ShpImportResult with _$ShpImportResult {
  const factory ShpImportResult({
    List<ShpFile>? shpFiles,
  }) = _ShpImportResult;

  const ShpImportResult._();

  List<ShpFile> get _nonNullShpFiles => (shpFiles ?? []);

  bool get hasShpFiles => _nonNullShpFiles.isNotEmpty;

  int get totalFeatures =>
      _nonNullShpFiles.fold(0, (p, e) => p + e.totalFeatures);

  int get usableFields =>
      _nonNullShpFiles.fold(0, (p, e) => p + e.usableFields);

  int get unusableFeatures =>
      _nonNullShpFiles.fold(0, (p, e) => p + e.unusableFeatures);
}
