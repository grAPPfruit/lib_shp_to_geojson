// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Field {
  String? get name => throw _privateConstructorUsedError;
  Polygon get border => throw _privateConstructorUsedError;
  List<Polygon> get holes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call({String? name, Polygon border, List<Polygon> holes});

  $PolygonCopyWith<$Res> get border;
}

/// @nodoc
class _$FieldCopyWithImpl<$Res, $Val extends Field>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? border = null,
    Object? holes = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      border: null == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as Polygon,
      holes: null == holes
          ? _value.holes
          : holes // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolygonCopyWith<$Res> get border {
    return $PolygonCopyWith<$Res>(_value.border, (value) {
      return _then(_value.copyWith(border: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FieldCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$_FieldCopyWith(_$_Field value, $Res Function(_$_Field) then) =
      __$$_FieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Polygon border, List<Polygon> holes});

  @override
  $PolygonCopyWith<$Res> get border;
}

/// @nodoc
class __$$_FieldCopyWithImpl<$Res> extends _$FieldCopyWithImpl<$Res, _$_Field>
    implements _$$_FieldCopyWith<$Res> {
  __$$_FieldCopyWithImpl(_$_Field _value, $Res Function(_$_Field) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? border = null,
    Object? holes = null,
  }) {
    return _then(_$_Field(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      border: null == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as Polygon,
      holes: null == holes
          ? _value._holes
          : holes // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
    ));
  }
}

/// @nodoc

class _$_Field extends _Field {
  const _$_Field(
      {this.name, required this.border, required final List<Polygon> holes})
      : _holes = holes,
        super._();

  @override
  final String? name;
  @override
  final Polygon border;
  final List<Polygon> _holes;
  @override
  List<Polygon> get holes {
    if (_holes is EqualUnmodifiableListView) return _holes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_holes);
  }

  @override
  String toString() {
    return 'Field(name: $name, border: $border, holes: $holes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Field &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.border, border) || other.border == border) &&
            const DeepCollectionEquality().equals(other._holes, _holes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, border, const DeepCollectionEquality().hash(_holes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldCopyWith<_$_Field> get copyWith =>
      __$$_FieldCopyWithImpl<_$_Field>(this, _$identity);
}

abstract class _Field extends Field {
  const factory _Field(
      {final String? name,
      required final Polygon border,
      required final List<Polygon> holes}) = _$_Field;
  const _Field._() : super._();

  @override
  String? get name;
  @override
  Polygon get border;
  @override
  List<Polygon> get holes;
  @override
  @JsonKey(ignore: true)
  _$$_FieldCopyWith<_$_Field> get copyWith =>
      throw _privateConstructorUsedError;
}
