// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'breeds_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Breeds _$BreedsFromJson(Map<String, dynamic> json) {
  return _Breeds.fromJson(json);
}

/// @nodoc
class _$BreedsTearOff {
  const _$BreedsTearOff();

  _Breeds call({required String id, required String name}) {
    return _Breeds(
      id: id,
      name: name,
    );
  }

  Breeds fromJson(Map<String, Object?> json) {
    return Breeds.fromJson(json);
  }
}

/// @nodoc
const $Breeds = _$BreedsTearOff();

/// @nodoc
mixin _$Breeds {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedsCopyWith<Breeds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedsCopyWith<$Res> {
  factory $BreedsCopyWith(Breeds value, $Res Function(Breeds) then) =
      _$BreedsCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$BreedsCopyWithImpl<$Res> implements $BreedsCopyWith<$Res> {
  _$BreedsCopyWithImpl(this._value, this._then);

  final Breeds _value;
  // ignore: unused_field
  final $Res Function(Breeds) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BreedsCopyWith<$Res> implements $BreedsCopyWith<$Res> {
  factory _$BreedsCopyWith(_Breeds value, $Res Function(_Breeds) then) =
      __$BreedsCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$BreedsCopyWithImpl<$Res> extends _$BreedsCopyWithImpl<$Res>
    implements _$BreedsCopyWith<$Res> {
  __$BreedsCopyWithImpl(_Breeds _value, $Res Function(_Breeds) _then)
      : super(_value, (v) => _then(v as _Breeds));

  @override
  _Breeds get _value => super._value as _Breeds;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Breeds(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Breeds extends _Breeds {
  const _$_Breeds({required this.id, required this.name}) : super._();

  factory _$_Breeds.fromJson(Map<String, dynamic> json) =>
      _$$_BreedsFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Breeds(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Breeds &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$BreedsCopyWith<_Breeds> get copyWith =>
      __$BreedsCopyWithImpl<_Breeds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BreedsToJson(this);
  }
}

abstract class _Breeds extends Breeds {
  const factory _Breeds({required String id, required String name}) = _$_Breeds;
  const _Breeds._() : super._();

  factory _Breeds.fromJson(Map<String, dynamic> json) = _$_Breeds.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$BreedsCopyWith<_Breeds> get copyWith => throw _privateConstructorUsedError;
}
