// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_geometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeoGeometry {
  GeoShape get border => throw _privateConstructorUsedError;
  List<GeoShape>? get holes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GeoShape border, List<GeoShape>? holes) polygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GeoShape border, List<GeoShape>? holes)? polygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GeoShape border, List<GeoShape>? holes)? polygon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Polygon value) polygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Polygon value)? polygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Polygon value)? polygon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeoGeometryCopyWith<GeoGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoGeometryCopyWith<$Res> {
  factory $GeoGeometryCopyWith(
          GeoGeometry value, $Res Function(GeoGeometry) then) =
      _$GeoGeometryCopyWithImpl<$Res, GeoGeometry>;
  @useResult
  $Res call({GeoShape border, List<GeoShape>? holes});

  $GeoShapeCopyWith<$Res> get border;
}

/// @nodoc
class _$GeoGeometryCopyWithImpl<$Res, $Val extends GeoGeometry>
    implements $GeoGeometryCopyWith<$Res> {
  _$GeoGeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? border = null,
    Object? holes = freezed,
  }) {
    return _then(_value.copyWith(
      border: null == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as GeoShape,
      holes: freezed == holes
          ? _value.holes
          : holes // ignore: cast_nullable_to_non_nullable
              as List<GeoShape>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoShapeCopyWith<$Res> get border {
    return $GeoShapeCopyWith<$Res>(_value.border, (value) {
      return _then(_value.copyWith(border: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PolygonCopyWith<$Res> implements $GeoGeometryCopyWith<$Res> {
  factory _$$_PolygonCopyWith(
          _$_Polygon value, $Res Function(_$_Polygon) then) =
      __$$_PolygonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GeoShape border, List<GeoShape>? holes});

  @override
  $GeoShapeCopyWith<$Res> get border;
}

/// @nodoc
class __$$_PolygonCopyWithImpl<$Res>
    extends _$GeoGeometryCopyWithImpl<$Res, _$_Polygon>
    implements _$$_PolygonCopyWith<$Res> {
  __$$_PolygonCopyWithImpl(_$_Polygon _value, $Res Function(_$_Polygon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? border = null,
    Object? holes = freezed,
  }) {
    return _then(_$_Polygon(
      border: null == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as GeoShape,
      holes: freezed == holes
          ? _value._holes
          : holes // ignore: cast_nullable_to_non_nullable
              as List<GeoShape>?,
    ));
  }
}

/// @nodoc

class _$_Polygon with DiagnosticableTreeMixin implements _Polygon {
  const _$_Polygon({required this.border, final List<GeoShape>? holes})
      : _holes = holes;

  @override
  final GeoShape border;
  final List<GeoShape>? _holes;
  @override
  List<GeoShape>? get holes {
    final value = _holes;
    if (value == null) return null;
    if (_holes is EqualUnmodifiableListView) return _holes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeoGeometry.polygon(border: $border, holes: $holes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeoGeometry.polygon'))
      ..add(DiagnosticsProperty('border', border))
      ..add(DiagnosticsProperty('holes', holes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Polygon &&
            (identical(other.border, border) || other.border == border) &&
            const DeepCollectionEquality().equals(other._holes, _holes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, border, const DeepCollectionEquality().hash(_holes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PolygonCopyWith<_$_Polygon> get copyWith =>
      __$$_PolygonCopyWithImpl<_$_Polygon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GeoShape border, List<GeoShape>? holes) polygon,
  }) {
    return polygon(border, holes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GeoShape border, List<GeoShape>? holes)? polygon,
  }) {
    return polygon?.call(border, holes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GeoShape border, List<GeoShape>? holes)? polygon,
    required TResult orElse(),
  }) {
    if (polygon != null) {
      return polygon(border, holes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Polygon value) polygon,
  }) {
    return polygon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Polygon value)? polygon,
  }) {
    return polygon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Polygon value)? polygon,
    required TResult orElse(),
  }) {
    if (polygon != null) {
      return polygon(this);
    }
    return orElse();
  }
}

abstract class _Polygon implements GeoGeometry {
  const factory _Polygon(
      {required final GeoShape border,
      final List<GeoShape>? holes}) = _$_Polygon;

  @override
  GeoShape get border;
  @override
  List<GeoShape>? get holes;
  @override
  @JsonKey(ignore: true)
  _$$_PolygonCopyWith<_$_Polygon> get copyWith =>
      throw _privateConstructorUsedError;
}
