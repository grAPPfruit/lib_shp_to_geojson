// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_coordinate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoCoordinate _$GeoCoordinateFromJson(Map<String, dynamic> json) {
  return _GeoCoordinate.fromJson(json);
}

/// @nodoc
mixin _$GeoCoordinate {
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCoordinateCopyWith<GeoCoordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCoordinateCopyWith<$Res> {
  factory $GeoCoordinateCopyWith(
          GeoCoordinate value, $Res Function(GeoCoordinate) then) =
      _$GeoCoordinateCopyWithImpl<$Res, GeoCoordinate>;
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class _$GeoCoordinateCopyWithImpl<$Res, $Val extends GeoCoordinate>
    implements $GeoCoordinateCopyWith<$Res> {
  _$GeoCoordinateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeoCoordinateCopyWith<$Res>
    implements $GeoCoordinateCopyWith<$Res> {
  factory _$$_GeoCoordinateCopyWith(
          _$_GeoCoordinate value, $Res Function(_$_GeoCoordinate) then) =
      __$$_GeoCoordinateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class __$$_GeoCoordinateCopyWithImpl<$Res>
    extends _$GeoCoordinateCopyWithImpl<$Res, _$_GeoCoordinate>
    implements _$$_GeoCoordinateCopyWith<$Res> {
  __$$_GeoCoordinateCopyWithImpl(
      _$_GeoCoordinate _value, $Res Function(_$_GeoCoordinate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$_GeoCoordinate(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoCoordinate with DiagnosticableTreeMixin implements _GeoCoordinate {
  const _$_GeoCoordinate({required this.lat, required this.long});

  factory _$_GeoCoordinate.fromJson(Map<String, dynamic> json) =>
      _$$_GeoCoordinateFromJson(json);

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeoCoordinate(lat: $lat, long: $long)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeoCoordinate'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoCoordinate &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoCoordinateCopyWith<_$_GeoCoordinate> get copyWith =>
      __$$_GeoCoordinateCopyWithImpl<_$_GeoCoordinate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoCoordinateToJson(
      this,
    );
  }
}

abstract class _GeoCoordinate implements GeoCoordinate {
  const factory _GeoCoordinate(
      {required final double lat,
      required final double long}) = _$_GeoCoordinate;

  factory _GeoCoordinate.fromJson(Map<String, dynamic> json) =
      _$_GeoCoordinate.fromJson;

  @override
  double get lat;
  @override
  double get long;
  @override
  @JsonKey(ignore: true)
  _$$_GeoCoordinateCopyWith<_$_GeoCoordinate> get copyWith =>
      throw _privateConstructorUsedError;
}
