// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../geo_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoJson _$GeoJsonFromJson(Map<String, dynamic> json) {
  return _GeoJson.fromJson(json);
}

/// @nodoc
mixin _$GeoJson {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'bbox')
  List<double>? get boundingBox => throw _privateConstructorUsedError;
  @JsonKey(name: 'features')
  List<GeoFeature>? get features => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoJsonCopyWith<GeoJson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoJsonCopyWith<$Res> {
  factory $GeoJsonCopyWith(GeoJson value, $Res Function(GeoJson) then) =
      _$GeoJsonCopyWithImpl<$Res, GeoJson>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'bbox') List<double>? boundingBox,
      @JsonKey(name: 'features') List<GeoFeature>? features});
}

/// @nodoc
class _$GeoJsonCopyWithImpl<$Res, $Val extends GeoJson>
    implements $GeoJsonCopyWith<$Res> {
  _$GeoJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? boundingBox = freezed,
    Object? features = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      boundingBox: freezed == boundingBox
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<GeoFeature>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeoJsonCopyWith<$Res> implements $GeoJsonCopyWith<$Res> {
  factory _$$_GeoJsonCopyWith(
          _$_GeoJson value, $Res Function(_$_GeoJson) then) =
      __$$_GeoJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'bbox') List<double>? boundingBox,
      @JsonKey(name: 'features') List<GeoFeature>? features});
}

/// @nodoc
class __$$_GeoJsonCopyWithImpl<$Res>
    extends _$GeoJsonCopyWithImpl<$Res, _$_GeoJson>
    implements _$$_GeoJsonCopyWith<$Res> {
  __$$_GeoJsonCopyWithImpl(_$_GeoJson _value, $Res Function(_$_GeoJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? boundingBox = freezed,
    Object? features = freezed,
  }) {
    return _then(_$_GeoJson(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      boundingBox: freezed == boundingBox
          ? _value._boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      features: freezed == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<GeoFeature>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoJson extends _GeoJson with DiagnosticableTreeMixin {
  const _$_GeoJson(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'bbox') final List<double>? boundingBox,
      @JsonKey(name: 'features') final List<GeoFeature>? features})
      : _boundingBox = boundingBox,
        _features = features,
        super._();

  factory _$_GeoJson.fromJson(Map<String, dynamic> json) =>
      _$$_GeoJsonFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  final List<double>? _boundingBox;
  @override
  @JsonKey(name: 'bbox')
  List<double>? get boundingBox {
    final value = _boundingBox;
    if (value == null) return null;
    if (_boundingBox is EqualUnmodifiableListView) return _boundingBox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GeoFeature>? _features;
  @override
  @JsonKey(name: 'features')
  List<GeoFeature>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeoJson(type: $type, boundingBox: $boundingBox, features: $features)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeoJson'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('boundingBox', boundingBox))
      ..add(DiagnosticsProperty('features', features));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoJson &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._boundingBox, _boundingBox) &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_boundingBox),
      const DeepCollectionEquality().hash(_features));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoJsonCopyWith<_$_GeoJson> get copyWith =>
      __$$_GeoJsonCopyWithImpl<_$_GeoJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoJsonToJson(
      this,
    );
  }
}

abstract class _GeoJson extends GeoJson {
  const factory _GeoJson(
          {@JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'bbox') final List<double>? boundingBox,
          @JsonKey(name: 'features') final List<GeoFeature>? features}) =
      _$_GeoJson;
  const _GeoJson._() : super._();

  factory _GeoJson.fromJson(Map<String, dynamic> json) = _$_GeoJson.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'bbox')
  List<double>? get boundingBox;
  @override
  @JsonKey(name: 'features')
  List<GeoFeature>? get features;
  @override
  @JsonKey(ignore: true)
  _$$_GeoJsonCopyWith<_$_GeoJson> get copyWith =>
      throw _privateConstructorUsedError;
}
