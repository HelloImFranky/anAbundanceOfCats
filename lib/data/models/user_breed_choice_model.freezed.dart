// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_breed_choice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBreedChoiceCode _$UserBreedChoiceCodeFromJson(Map<String, dynamic> json) {
  return _UserBreedChoiceCode.fromJson(json);
}

/// @nodoc
class _$UserBreedChoiceCodeTearOff {
  const _$UserBreedChoiceCodeTearOff();

  _UserBreedChoiceCode call(
      {required String? breedCode, required String? breedName}) {
    return _UserBreedChoiceCode(
      breedCode: breedCode,
      breedName: breedName,
    );
  }

  UserBreedChoiceCode fromJson(Map<String, Object?> json) {
    return UserBreedChoiceCode.fromJson(json);
  }
}

/// @nodoc
const $UserBreedChoiceCode = _$UserBreedChoiceCodeTearOff();

/// @nodoc
mixin _$UserBreedChoiceCode {
  String? get breedCode => throw _privateConstructorUsedError;
  String? get breedName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBreedChoiceCodeCopyWith<UserBreedChoiceCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBreedChoiceCodeCopyWith<$Res> {
  factory $UserBreedChoiceCodeCopyWith(
          UserBreedChoiceCode value, $Res Function(UserBreedChoiceCode) then) =
      _$UserBreedChoiceCodeCopyWithImpl<$Res>;
  $Res call({String? breedCode, String? breedName});
}

/// @nodoc
class _$UserBreedChoiceCodeCopyWithImpl<$Res>
    implements $UserBreedChoiceCodeCopyWith<$Res> {
  _$UserBreedChoiceCodeCopyWithImpl(this._value, this._then);

  final UserBreedChoiceCode _value;
  // ignore: unused_field
  final $Res Function(UserBreedChoiceCode) _then;

  @override
  $Res call({
    Object? breedCode = freezed,
    Object? breedName = freezed,
  }) {
    return _then(_value.copyWith(
      breedCode: breedCode == freezed
          ? _value.breedCode
          : breedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      breedName: breedName == freezed
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserBreedChoiceCodeCopyWith<$Res>
    implements $UserBreedChoiceCodeCopyWith<$Res> {
  factory _$UserBreedChoiceCodeCopyWith(_UserBreedChoiceCode value,
          $Res Function(_UserBreedChoiceCode) then) =
      __$UserBreedChoiceCodeCopyWithImpl<$Res>;
  @override
  $Res call({String? breedCode, String? breedName});
}

/// @nodoc
class __$UserBreedChoiceCodeCopyWithImpl<$Res>
    extends _$UserBreedChoiceCodeCopyWithImpl<$Res>
    implements _$UserBreedChoiceCodeCopyWith<$Res> {
  __$UserBreedChoiceCodeCopyWithImpl(
      _UserBreedChoiceCode _value, $Res Function(_UserBreedChoiceCode) _then)
      : super(_value, (v) => _then(v as _UserBreedChoiceCode));

  @override
  _UserBreedChoiceCode get _value => super._value as _UserBreedChoiceCode;

  @override
  $Res call({
    Object? breedCode = freezed,
    Object? breedName = freezed,
  }) {
    return _then(_UserBreedChoiceCode(
      breedCode: breedCode == freezed
          ? _value.breedCode
          : breedCode // ignore: cast_nullable_to_non_nullable
              as String?,
      breedName: breedName == freezed
          ? _value.breedName
          : breedName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserBreedChoiceCode extends _UserBreedChoiceCode {
  const _$_UserBreedChoiceCode(
      {required this.breedCode, required this.breedName})
      : super._();

  factory _$_UserBreedChoiceCode.fromJson(Map<String, dynamic> json) =>
      _$$_UserBreedChoiceCodeFromJson(json);

  @override
  final String? breedCode;
  @override
  final String? breedName;

  @override
  String toString() {
    return 'UserBreedChoiceCode(breedCode: $breedCode, breedName: $breedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserBreedChoiceCode &&
            const DeepCollectionEquality().equals(other.breedCode, breedCode) &&
            const DeepCollectionEquality().equals(other.breedName, breedName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(breedCode),
      const DeepCollectionEquality().hash(breedName));

  @JsonKey(ignore: true)
  @override
  _$UserBreedChoiceCodeCopyWith<_UserBreedChoiceCode> get copyWith =>
      __$UserBreedChoiceCodeCopyWithImpl<_UserBreedChoiceCode>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBreedChoiceCodeToJson(this);
  }
}

abstract class _UserBreedChoiceCode extends UserBreedChoiceCode {
  const factory _UserBreedChoiceCode(
      {required String? breedCode,
      required String? breedName}) = _$_UserBreedChoiceCode;
  const _UserBreedChoiceCode._() : super._();

  factory _UserBreedChoiceCode.fromJson(Map<String, dynamic> json) =
      _$_UserBreedChoiceCode.fromJson;

  @override
  String? get breedCode;
  @override
  String? get breedName;
  @override
  @JsonKey(ignore: true)
  _$UserBreedChoiceCodeCopyWith<_UserBreedChoiceCode> get copyWith =>
      throw _privateConstructorUsedError;
}
