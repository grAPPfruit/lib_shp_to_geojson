// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_geo_geometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalGeoGeometry _$LocalGeoGeometryFromJson(Map<String, dynamic> json) {
  return _LocalGeoGeometry.fromJson(json);
}

/// @nodoc
mixin _$LocalGeoGeometry {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinates')
  List<List<List<double>>>? get coordinates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalGeoGeometryCopyWith<LocalGeoGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalGeoGeometryCopyWith<$Res> {
  factory $LocalGeoGeometryCopyWith(
          LocalGeoGeometry value, $Res Function(LocalGeoGeometry) then) =
      _$LocalGeoGeometryCopyWithImpl<$Res, LocalGeoGeometry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'coordinates') List<List<List<double>>>? coordinates});
}

/// @nodoc
class _$LocalGeoGeometryCopyWithImpl<$Res, $Val extends LocalGeoGeometry>
    implements $LocalGeoGeometryCopyWith<$Res> {
  _$LocalGeoGeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalGeoGeometryCopyWith<$Res>
    implements $LocalGeoGeometryCopyWith<$Res> {
  factory _$$_LocalGeoGeometryCopyWith(
          _$_LocalGeoGeometry value, $Res Function(_$_LocalGeoGeometry) then) =
      __$$_LocalGeoGeometryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'coordinates') List<List<List<double>>>? coordinates});
}

/// @nodoc
class __$$_LocalGeoGeometryCopyWithImpl<$Res>
    extends _$LocalGeoGeometryCopyWithImpl<$Res, _$_LocalGeoGeometry>
    implements _$$_LocalGeoGeometryCopyWith<$Res> {
  __$$_LocalGeoGeometryCopyWithImpl(
      _$_LocalGeoGeometry _value, $Res Function(_$_LocalGeoGeometry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$_LocalGeoGeometry(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalGeoGeometry
    with DiagnosticableTreeMixin
    implements _LocalGeoGeometry {
  const _$_LocalGeoGeometry(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'coordinates')
      final List<List<List<double>>>? coordinates})
      : _coordinates = coordinates;

  factory _$_LocalGeoGeometry.fromJson(Map<String, dynamic> json) =>
      _$$_LocalGeoGeometryFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  final List<List<List<double>>>? _coordinates;
  @override
  @JsonKey(name: 'coordinates')
  List<List<List<double>>>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalGeoGeometry(type: $type, coordinates: $coordinates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalGeoGeometry'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('coordinates', coordinates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalGeoGeometry &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalGeoGeometryCopyWith<_$_LocalGeoGeometry> get copyWith =>
      __$$_LocalGeoGeometryCopyWithImpl<_$_LocalGeoGeometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalGeoGeometryToJson(
      this,
    );
  }
}

abstract class _LocalGeoGeometry implements LocalGeoGeometry {
  const factory _LocalGeoGeometry(
      {@JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'coordinates')
      final List<List<List<double>>>? coordinates}) = _$_LocalGeoGeometry;

  factory _LocalGeoGeometry.fromJson(Map<String, dynamic> json) =
      _$_LocalGeoGeometry.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'coordinates')
  List<List<List<double>>>? get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_LocalGeoGeometryCopyWith<_$_LocalGeoGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}
