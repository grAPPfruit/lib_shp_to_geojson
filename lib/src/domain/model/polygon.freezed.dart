// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polygon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Polygon {
  List<LatLong> get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PolygonCopyWith<Polygon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonCopyWith<$Res> {
  factory $PolygonCopyWith(Polygon value, $Res Function(Polygon) then) =
      _$PolygonCopyWithImpl<$Res, Polygon>;
  @useResult
  $Res call({List<LatLong> points});
}

/// @nodoc
class _$PolygonCopyWithImpl<$Res, $Val extends Polygon>
    implements $PolygonCopyWith<$Res> {
  _$PolygonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLong>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PolygonCopyWith<$Res> implements $PolygonCopyWith<$Res> {
  factory _$$_PolygonCopyWith(
          _$_Polygon value, $Res Function(_$_Polygon) then) =
      __$$_PolygonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LatLong> points});
}

/// @nodoc
class __$$_PolygonCopyWithImpl<$Res>
    extends _$PolygonCopyWithImpl<$Res, _$_Polygon>
    implements _$$_PolygonCopyWith<$Res> {
  __$$_PolygonCopyWithImpl(_$_Polygon _value, $Res Function(_$_Polygon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_$_Polygon(
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLong>,
    ));
  }
}

/// @nodoc

class _$_Polygon implements _Polygon {
  const _$_Polygon({required final List<LatLong> points}) : _points = points;

  final List<LatLong> _points;
  @override
  List<LatLong> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'Polygon(points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Polygon &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PolygonCopyWith<_$_Polygon> get copyWith =>
      __$$_PolygonCopyWithImpl<_$_Polygon>(this, _$identity);
}

abstract class _Polygon implements Polygon {
  const factory _Polygon({required final List<LatLong> points}) = _$_Polygon;

  @override
  List<LatLong> get points;
  @override
  @JsonKey(ignore: true)
  _$$_PolygonCopyWith<_$_Polygon> get copyWith =>
      throw _privateConstructorUsedError;
}
