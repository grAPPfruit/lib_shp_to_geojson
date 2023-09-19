// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../geo_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoFeature _$GeoFeatureFromJson(Map<String, dynamic> json) {
  return _GeoFeature.fromJson(json);
}

/// @nodoc
mixin _$GeoFeature {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'properties')
  Map<String, dynamic>? get properties => throw _privateConstructorUsedError;
  @JsonKey(name: 'geometry')
  @GeoGeometryConverter()
  GeoGeometry? get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoFeatureCopyWith<GeoFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoFeatureCopyWith<$Res> {
  factory $GeoFeatureCopyWith(
          GeoFeature value, $Res Function(GeoFeature) then) =
      _$GeoFeatureCopyWithImpl<$Res, GeoFeature>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'properties') Map<String, dynamic>? properties,
      @JsonKey(name: 'geometry')
      @GeoGeometryConverter()
      GeoGeometry? geometry});

  $GeoGeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$GeoFeatureCopyWithImpl<$Res, $Val extends GeoFeature>
    implements $GeoFeatureCopyWith<$Res> {
  _$GeoFeatureCopyWithImpl(this._value, this._then);

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
              as GeoGeometry?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoGeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeoGeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeoFeatureCopyWith<$Res>
    implements $GeoFeatureCopyWith<$Res> {
  factory _$$_GeoFeatureCopyWith(
          _$_GeoFeature value, $Res Function(_$_GeoFeature) then) =
      __$$_GeoFeatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'properties') Map<String, dynamic>? properties,
      @JsonKey(name: 'geometry')
      @GeoGeometryConverter()
      GeoGeometry? geometry});

  @override
  $GeoGeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$_GeoFeatureCopyWithImpl<$Res>
    extends _$GeoFeatureCopyWithImpl<$Res, _$_GeoFeature>
    implements _$$_GeoFeatureCopyWith<$Res> {
  __$$_GeoFeatureCopyWithImpl(
      _$_GeoFeature _value, $Res Function(_$_GeoFeature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? properties = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_$_GeoFeature(
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
              as GeoGeometry?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoFeature extends _GeoFeature with DiagnosticableTreeMixin {
  const _$_GeoFeature(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'properties') final Map<String, dynamic>? properties,
      @JsonKey(name: 'geometry') @GeoGeometryConverter() this.geometry})
      : _properties = properties,
        super._();

  factory _$_GeoFeature.fromJson(Map<String, dynamic> json) =>
      _$$_GeoFeatureFromJson(json);

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
  @GeoGeometryConverter()
  final GeoGeometry? geometry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeoFeature(type: $type, properties: $properties, geometry: $geometry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeoFeature'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('properties', properties))
      ..add(DiagnosticsProperty('geometry', geometry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoFeature &&
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
  _$$_GeoFeatureCopyWith<_$_GeoFeature> get copyWith =>
      __$$_GeoFeatureCopyWithImpl<_$_GeoFeature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoFeatureToJson(
      this,
    );
  }
}

abstract class _GeoFeature extends GeoFeature {
  const factory _GeoFeature(
      {@JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'properties') final Map<String, dynamic>? properties,
      @JsonKey(name: 'geometry')
      @GeoGeometryConverter()
      final GeoGeometry? geometry}) = _$_GeoFeature;
  const _GeoFeature._() : super._();

  factory _GeoFeature.fromJson(Map<String, dynamic> json) =
      _$_GeoFeature.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'properties')
  Map<String, dynamic>? get properties;
  @override
  @JsonKey(name: 'geometry')
  @GeoGeometryConverter()
  GeoGeometry? get geometry;
  @override
  @JsonKey(ignore: true)
  _$$_GeoFeatureCopyWith<_$_GeoFeature> get copyWith =>
      throw _privateConstructorUsedError;
}
