// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_geo_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalGeoFeature _$LocalGeoFeatureFromJson(Map<String, dynamic> json) {
  return _LocalGeoFeature.fromJson(json);
}

/// @nodoc
mixin _$LocalGeoFeature {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'properties')
  Map<String, dynamic>? get properties => throw _privateConstructorUsedError;
  @JsonKey(name: 'geometry')
  @LocalGeoGeometryConverter()
  LocalGeoGeometry? get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalGeoFeatureCopyWith<LocalGeoFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalGeoFeatureCopyWith<$Res> {
  factory $LocalGeoFeatureCopyWith(
          LocalGeoFeature value, $Res Function(LocalGeoFeature) then) =
      _$LocalGeoFeatureCopyWithImpl<$Res, LocalGeoFeature>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'properties') Map<String, dynamic>? properties,
      @JsonKey(name: 'geometry')
      @LocalGeoGeometryConverter()
      LocalGeoGeometry? geometry});

  $LocalGeoGeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$LocalGeoFeatureCopyWithImpl<$Res, $Val extends LocalGeoFeature>
    implements $LocalGeoFeatureCopyWith<$Res> {
  _$LocalGeoFeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? properties = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as LocalGeoGeometry?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalGeoGeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $LocalGeoGeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocalGeoFeatureCopyWith<$Res>
    implements $LocalGeoFeatureCopyWith<$Res> {
  factory _$$_LocalGeoFeatureCopyWith(
          _$_LocalGeoFeature value, $Res Function(_$_LocalGeoFeature) then) =
      __$$_LocalGeoFeatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'properties') Map<String, dynamic>? properties,
      @JsonKey(name: 'geometry')
      @LocalGeoGeometryConverter()
      LocalGeoGeometry? geometry});

  @override
  $LocalGeoGeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$_LocalGeoFeatureCopyWithImpl<$Res>
    extends _$LocalGeoFeatureCopyWithImpl<$Res, _$_LocalGeoFeature>
    implements _$$_LocalGeoFeatureCopyWith<$Res> {
  __$$_LocalGeoFeatureCopyWithImpl(
      _$_LocalGeoFeature _value, $Res Function(_$_LocalGeoFeature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? properties = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_$_LocalGeoFeature(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      properties: freezed == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as LocalGeoGeometry?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalGeoFeature
    with DiagnosticableTreeMixin
    implements _LocalGeoFeature {
  const _$_LocalGeoFeature(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'properties') final Map<String, dynamic>? properties,
      @JsonKey(name: 'geometry') @LocalGeoGeometryConverter() this.geometry})
      : _properties = properties;

  factory _$_LocalGeoFeature.fromJson(Map<String, dynamic> json) =>
      _$$_LocalGeoFeatureFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  final Map<String, dynamic>? _properties;
  @override
  @JsonKey(name: 'properties')
  Map<String, dynamic>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'geometry')
  @LocalGeoGeometryConverter()
  final LocalGeoGeometry? geometry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalGeoFeature(type: $type, properties: $properties, geometry: $geometry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalGeoFeature'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('properties', properties))
      ..add(DiagnosticsProperty('geometry', geometry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalGeoFeature &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_properties), geometry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalGeoFeatureCopyWith<_$_LocalGeoFeature> get copyWith =>
      __$$_LocalGeoFeatureCopyWithImpl<_$_LocalGeoFeature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalGeoFeatureToJson(
      this,
    );
  }
}

abstract class _LocalGeoFeature implements LocalGeoFeature {
  const factory _LocalGeoFeature(
      {@JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'properties') final Map<String, dynamic>? properties,
      @JsonKey(name: 'geometry')
      @LocalGeoGeometryConverter()
      final LocalGeoGeometry? geometry}) = _$_LocalGeoFeature;

  factory _LocalGeoFeature.fromJson(Map<String, dynamic> json) =
      _$_LocalGeoFeature.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'properties')
  Map<String, dynamic>? get properties;
  @override
  @JsonKey(name: 'geometry')
  @LocalGeoGeometryConverter()
  LocalGeoGeometry? get geometry;
  @override
  @JsonKey(ignore: true)
  _$$_LocalGeoFeatureCopyWith<_$_LocalGeoFeature> get copyWith =>
      throw _privateConstructorUsedError;
}
