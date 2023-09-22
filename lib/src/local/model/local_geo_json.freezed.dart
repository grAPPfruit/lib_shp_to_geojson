// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_geo_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalGeoJson _$LocalGeoJsonFromJson(Map<String, dynamic> json) {
  return _LocalGeoJson.fromJson(json);
}

/// @nodoc
mixin _$LocalGeoJson {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'bbox')
  List<double>? get boundingBox => throw _privateConstructorUsedError;
  @JsonKey(name: 'features')
  List<LocalGeoFeature>? get features => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalGeoJsonCopyWith<LocalGeoJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalGeoJsonCopyWith<$Res> {
  factory $LocalGeoJsonCopyWith(
          LocalGeoJson value, $Res Function(LocalGeoJson) then) =
      _$LocalGeoJsonCopyWithImpl<$Res, LocalGeoJson>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'bbox') List<double>? boundingBox,
      @JsonKey(name: 'features') List<LocalGeoFeature>? features});
}

/// @nodoc
class _$LocalGeoJsonCopyWithImpl<$Res, $Val extends LocalGeoJson>
    implements $LocalGeoJsonCopyWith<$Res> {
  _$LocalGeoJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? boundingBox = freezed,
    Object? features = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      boundingBox: freezed == boundingBox
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<LocalGeoFeature>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalGeoJsonCopyWith<$Res>
    implements $LocalGeoJsonCopyWith<$Res> {
  factory _$$_LocalGeoJsonCopyWith(
          _$_LocalGeoJson value, $Res Function(_$_LocalGeoJson) then) =
      __$$_LocalGeoJsonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'bbox') List<double>? boundingBox,
      @JsonKey(name: 'features') List<LocalGeoFeature>? features});
}

/// @nodoc
class __$$_LocalGeoJsonCopyWithImpl<$Res>
    extends _$LocalGeoJsonCopyWithImpl<$Res, _$_LocalGeoJson>
    implements _$$_LocalGeoJsonCopyWith<$Res> {
  __$$_LocalGeoJsonCopyWithImpl(
      _$_LocalGeoJson _value, $Res Function(_$_LocalGeoJson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? boundingBox = freezed,
    Object? features = freezed,
  }) {
    return _then(_$_LocalGeoJson(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      boundingBox: freezed == boundingBox
          ? _value._boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      features: freezed == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<LocalGeoFeature>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalGeoJson with DiagnosticableTreeMixin implements _LocalGeoJson {
  const _$_LocalGeoJson(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'bbox') final List<double>? boundingBox,
      @JsonKey(name: 'features') final List<LocalGeoFeature>? features})
      : _boundingBox = boundingBox,
        _features = features;

  factory _$_LocalGeoJson.fromJson(Map<String, dynamic> json) =>
      _$$_LocalGeoJsonFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
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

  final List<LocalGeoFeature>? _features;
  @override
  @JsonKey(name: 'features')
  List<LocalGeoFeature>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalGeoJson(type: $type, boundingBox: $boundingBox, features: $features)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalGeoJson'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('boundingBox', boundingBox))
      ..add(DiagnosticsProperty('features', features));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalGeoJson &&
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
  _$$_LocalGeoJsonCopyWith<_$_LocalGeoJson> get copyWith =>
      __$$_LocalGeoJsonCopyWithImpl<_$_LocalGeoJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalGeoJsonToJson(
      this,
    );
  }
}

abstract class _LocalGeoJson implements LocalGeoJson {
  const factory _LocalGeoJson(
          {@JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'bbox') final List<double>? boundingBox,
          @JsonKey(name: 'features') final List<LocalGeoFeature>? features}) =
      _$_LocalGeoJson;

  factory _LocalGeoJson.fromJson(Map<String, dynamic> json) =
      _$_LocalGeoJson.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'bbox')
  List<double>? get boundingBox;
  @override
  @JsonKey(name: 'features')
  List<LocalGeoFeature>? get features;
  @override
  @JsonKey(ignore: true)
  _$$_LocalGeoJsonCopyWith<_$_LocalGeoJson> get copyWith =>
      throw _privateConstructorUsedError;
}
