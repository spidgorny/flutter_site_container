// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return _Config.fromJson(json);
}

/// @nodoc
mixin _$Config {
  String get title => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  /// Serializes this Config to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfigCopyWith<Config> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigCopyWith<$Res> {
  factory $ConfigCopyWith(Config value, $Res Function(Config) then) =
      _$ConfigCopyWithImpl<$Res, Config>;
  @useResult
  $Res call({String title, String lastName, int age});
}

/// @nodoc
class _$ConfigCopyWithImpl<$Res, $Val extends Config>
    implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? lastName = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigImplCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$$ConfigImplCopyWith(
          _$ConfigImpl value, $Res Function(_$ConfigImpl) then) =
      __$$ConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String lastName, int age});
}

/// @nodoc
class __$$ConfigImplCopyWithImpl<$Res>
    extends _$ConfigCopyWithImpl<$Res, _$ConfigImpl>
    implements _$$ConfigImplCopyWith<$Res> {
  __$$ConfigImplCopyWithImpl(
      _$ConfigImpl _value, $Res Function(_$ConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? lastName = null,
    Object? age = null,
  }) {
    return _then(_$ConfigImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigImpl with DiagnosticableTreeMixin implements _Config {
  const _$ConfigImpl(
      {required this.title, required this.lastName, required this.age});

  factory _$ConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigImplFromJson(json);

  @override
  final String title;
  @override
  final String lastName;
  @override
  final int age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Config(title: $title, lastName: $lastName, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Config'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, lastName, age);

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigImplCopyWith<_$ConfigImpl> get copyWith =>
      __$$ConfigImplCopyWithImpl<_$ConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigImplToJson(
      this,
    );
  }
}

abstract class _Config implements Config {
  const factory _Config(
      {required final String title,
      required final String lastName,
      required final int age}) = _$ConfigImpl;

  factory _Config.fromJson(Map<String, dynamic> json) = _$ConfigImpl.fromJson;

  @override
  String get title;
  @override
  String get lastName;
  @override
  int get age;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigImplCopyWith<_$ConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
