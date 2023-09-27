// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shp_import_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShpImportResult {
  List<ShpFile>? get shpFiles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShpImportResultCopyWith<ShpImportResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShpImportResultCopyWith<$Res> {
  factory $ShpImportResultCopyWith(
          ShpImportResult value, $Res Function(ShpImportResult) then) =
      _$ShpImportResultCopyWithImpl<$Res, ShpImportResult>;
  @useResult
  $Res call({List<ShpFile>? shpFiles});
}

/// @nodoc
class _$ShpImportResultCopyWithImpl<$Res, $Val extends ShpImportResult>
    implements $ShpImportResultCopyWith<$Res> {
  _$ShpImportResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shpFiles = freezed,
  }) {
    return _then(_value.copyWith(
      shpFiles: freezed == shpFiles
          ? _value.shpFiles
          : shpFiles // ignore: cast_nullable_to_non_nullable
              as List<ShpFile>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShpImportResultCopyWith<$Res>
    implements $ShpImportResultCopyWith<$Res> {
  factory _$$_ShpImportResultCopyWith(
          _$_ShpImportResult value, $Res Function(_$_ShpImportResult) then) =
      __$$_ShpImportResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ShpFile>? shpFiles});
}

/// @nodoc
class __$$_ShpImportResultCopyWithImpl<$Res>
    extends _$ShpImportResultCopyWithImpl<$Res, _$_ShpImportResult>
    implements _$$_ShpImportResultCopyWith<$Res> {
  __$$_ShpImportResultCopyWithImpl(
      _$_ShpImportResult _value, $Res Function(_$_ShpImportResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shpFiles = freezed,
  }) {
    return _then(_$_ShpImportResult(
      shpFiles: freezed == shpFiles
          ? _value._shpFiles
          : shpFiles // ignore: cast_nullable_to_non_nullable
              as List<ShpFile>?,
    ));
  }
}

/// @nodoc

class _$_ShpImportResult extends _ShpImportResult {
  const _$_ShpImportResult({final List<ShpFile>? shpFiles})
      : _shpFiles = shpFiles,
        super._();

  final List<ShpFile>? _shpFiles;
  @override
  List<ShpFile>? get shpFiles {
    final value = _shpFiles;
    if (value == null) return null;
    if (_shpFiles is EqualUnmodifiableListView) return _shpFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ShpImportResult(shpFiles: $shpFiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShpImportResult &&
            const DeepCollectionEquality().equals(other._shpFiles, _shpFiles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shpFiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShpImportResultCopyWith<_$_ShpImportResult> get copyWith =>
      __$$_ShpImportResultCopyWithImpl<_$_ShpImportResult>(this, _$identity);
}

abstract class _ShpImportResult extends ShpImportResult {
  const factory _ShpImportResult({final List<ShpFile>? shpFiles}) =
      _$_ShpImportResult;
  const _ShpImportResult._() : super._();

  @override
  List<ShpFile>? get shpFiles;
  @override
  @JsonKey(ignore: true)
  _$$_ShpImportResultCopyWith<_$_ShpImportResult> get copyWith =>
      throw _privateConstructorUsedError;
}
