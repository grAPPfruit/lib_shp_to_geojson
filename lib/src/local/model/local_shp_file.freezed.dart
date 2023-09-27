// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_shp_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalShpFile {
  String get shpFileName => throw _privateConstructorUsedError;
  int get totalFeatures => throw _privateConstructorUsedError;
  String? get esriProjection => throw _privateConstructorUsedError;
  LocalGeoJson? get geoJson => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalShpFileCopyWith<LocalShpFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalShpFileCopyWith<$Res> {
  factory $LocalShpFileCopyWith(
          LocalShpFile value, $Res Function(LocalShpFile) then) =
      _$LocalShpFileCopyWithImpl<$Res, LocalShpFile>;
  @useResult
  $Res call(
      {String shpFileName,
      int totalFeatures,
      String? esriProjection,
      LocalGeoJson? geoJson});

  $LocalGeoJsonCopyWith<$Res>? get geoJson;
}

/// @nodoc
class _$LocalShpFileCopyWithImpl<$Res, $Val extends LocalShpFile>
    implements $LocalShpFileCopyWith<$Res> {
  _$LocalShpFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shpFileName = null,
    Object? totalFeatures = null,
    Object? esriProjection = freezed,
    Object? geoJson = freezed,
  }) {
    return _then(_value.copyWith(
      shpFileName: null == shpFileName
          ? _value.shpFileName
          : shpFileName // ignore: cast_nullable_to_non_nullable
              as String,
      totalFeatures: null == totalFeatures
          ? _value.totalFeatures
          : totalFeatures // ignore: cast_nullable_to_non_nullable
              as int,
      esriProjection: freezed == esriProjection
          ? _value.esriProjection
          : esriProjection // ignore: cast_nullable_to_non_nullable
              as String?,
      geoJson: freezed == geoJson
          ? _value.geoJson
          : geoJson // ignore: cast_nullable_to_non_nullable
              as LocalGeoJson?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalGeoJsonCopyWith<$Res>? get geoJson {
    if (_value.geoJson == null) {
      return null;
    }

    return $LocalGeoJsonCopyWith<$Res>(_value.geoJson!, (value) {
      return _then(_value.copyWith(geoJson: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocalShpFileCopyWith<$Res>
    implements $LocalShpFileCopyWith<$Res> {
  factory _$$_LocalShpFileCopyWith(
          _$_LocalShpFile value, $Res Function(_$_LocalShpFile) then) =
      __$$_LocalShpFileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shpFileName,
      int totalFeatures,
      String? esriProjection,
      LocalGeoJson? geoJson});

  @override
  $LocalGeoJsonCopyWith<$Res>? get geoJson;
}

/// @nodoc
class __$$_LocalShpFileCopyWithImpl<$Res>
    extends _$LocalShpFileCopyWithImpl<$Res, _$_LocalShpFile>
    implements _$$_LocalShpFileCopyWith<$Res> {
  __$$_LocalShpFileCopyWithImpl(
      _$_LocalShpFile _value, $Res Function(_$_LocalShpFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shpFileName = null,
    Object? totalFeatures = null,
    Object? esriProjection = freezed,
    Object? geoJson = freezed,
  }) {
    return _then(_$_LocalShpFile(
      shpFileName: null == shpFileName
          ? _value.shpFileName
          : shpFileName // ignore: cast_nullable_to_non_nullable
              as String,
      totalFeatures: null == totalFeatures
          ? _value.totalFeatures
          : totalFeatures // ignore: cast_nullable_to_non_nullable
              as int,
      esriProjection: freezed == esriProjection
          ? _value.esriProjection
          : esriProjection // ignore: cast_nullable_to_non_nullable
              as String?,
      geoJson: freezed == geoJson
          ? _value.geoJson
          : geoJson // ignore: cast_nullable_to_non_nullable
              as LocalGeoJson?,
    ));
  }
}

/// @nodoc

class _$_LocalShpFile with DiagnosticableTreeMixin implements _LocalShpFile {
  const _$_LocalShpFile(
      {required this.shpFileName,
      this.totalFeatures = 0,
      this.esriProjection,
      this.geoJson});

  @override
  final String shpFileName;
  @override
  @JsonKey()
  final int totalFeatures;
  @override
  final String? esriProjection;
  @override
  final LocalGeoJson? geoJson;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalShpFile(shpFileName: $shpFileName, totalFeatures: $totalFeatures, esriProjection: $esriProjection, geoJson: $geoJson)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalShpFile'))
      ..add(DiagnosticsProperty('shpFileName', shpFileName))
      ..add(DiagnosticsProperty('totalFeatures', totalFeatures))
      ..add(DiagnosticsProperty('esriProjection', esriProjection))
      ..add(DiagnosticsProperty('geoJson', geoJson));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalShpFile &&
            (identical(other.shpFileName, shpFileName) ||
                other.shpFileName == shpFileName) &&
            (identical(other.totalFeatures, totalFeatures) ||
                other.totalFeatures == totalFeatures) &&
            (identical(other.esriProjection, esriProjection) ||
                other.esriProjection == esriProjection) &&
            (identical(other.geoJson, geoJson) || other.geoJson == geoJson));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, shpFileName, totalFeatures, esriProjection, geoJson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalShpFileCopyWith<_$_LocalShpFile> get copyWith =>
      __$$_LocalShpFileCopyWithImpl<_$_LocalShpFile>(this, _$identity);
}

abstract class _LocalShpFile implements LocalShpFile {
  const factory _LocalShpFile(
      {required final String shpFileName,
      final int totalFeatures,
      final String? esriProjection,
      final LocalGeoJson? geoJson}) = _$_LocalShpFile;

  @override
  String get shpFileName;
  @override
  int get totalFeatures;
  @override
  String? get esriProjection;
  @override
  LocalGeoJson? get geoJson;
  @override
  @JsonKey(ignore: true)
  _$$_LocalShpFileCopyWith<_$_LocalShpFile> get copyWith =>
      throw _privateConstructorUsedError;
}
