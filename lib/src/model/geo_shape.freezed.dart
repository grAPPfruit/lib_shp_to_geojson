// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_shape.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeoShape {
  List<GeoCoordinate> get coords => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeoShapeCopyWith<GeoShape> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoShapeCopyWith<$Res> {
  factory $GeoShapeCopyWith(GeoShape value, $Res Function(GeoShape) then) =
      _$GeoShapeCopyWithImpl<$Res, GeoShape>;
  @useResult
  $Res call({List<GeoCoordinate> coords});
}

/// @nodoc
class _$GeoShapeCopyWithImpl<$Res, $Val extends GeoShape>
    implements $GeoShapeCopyWith<$Res> {
  _$GeoShapeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coords = null,
  }) {
    return _then(_value.copyWith(
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as List<GeoCoordinate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeoShapeCopyWith<$Res> implements $GeoShapeCopyWith<$Res> {
  factory _$$_GeoShapeCopyWith(
          _$_GeoShape value, $Res Function(_$_GeoShape) then) =
      __$$_GeoShapeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GeoCoordinate> coords});
}

/// @nodoc
class __$$_GeoShapeCopyWithImpl<$Res>
    extends _$GeoShapeCopyWithImpl<$Res, _$_GeoShape>
    implements _$$_GeoShapeCopyWith<$Res> {
  __$$_GeoShapeCopyWithImpl(
      _$_GeoShape _value, $Res Function(_$_GeoShape) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coords = null,
  }) {
    return _then(_$_GeoShape(
      coords: null == coords
          ? _value._coords
          : coords // ignore: cast_nullable_to_non_nullable
              as List<GeoCoordinate>,
    ));
  }
}

/// @nodoc

class _$_GeoShape implements _GeoShape {
  const _$_GeoShape({required final List<GeoCoordinate> coords})
      : _coords = coords;

  final List<GeoCoordinate> _coords;
  @override
  List<GeoCoordinate> get coords {
    if (_coords is EqualUnmodifiableListView) return _coords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coords);
  }

  @override
  String toString() {
    return 'GeoShape(coords: $coords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoShape &&
            const DeepCollectionEquality().equals(other._coords, _coords));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoShapeCopyWith<_$_GeoShape> get copyWith =>
      __$$_GeoShapeCopyWithImpl<_$_GeoShape>(this, _$identity);
}

abstract class _GeoShape implements GeoShape {
  const factory _GeoShape({required final List<GeoCoordinate> coords}) =
      _$_GeoShape;

  @override
  List<GeoCoordinate> get coords;
  @override
  @JsonKey(ignore: true)
  _$$_GeoShapeCopyWith<_$_GeoShape> get copyWith =>
      throw _privateConstructorUsedError;
}
