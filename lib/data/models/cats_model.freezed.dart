// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cats _$CatsFromJson(Map<String, dynamic> json) {
  return _Cats.fromJson(json);
}

/// @nodoc
class _$CatsTearOff {
  const _$CatsTearOff();

  _Cats call(
      {required String id,
      required String url,
      required int width,
      required int height}) {
    return _Cats(
      id: id,
      url: url,
      width: width,
      height: height,
    );
  }

  Cats fromJson(Map<String, Object?> json) {
    return Cats.fromJson(json);
  }
}

/// @nodoc
const $Cats = _$CatsTearOff();

/// @nodoc
mixin _$Cats {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatsCopyWith<Cats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatsCopyWith<$Res> {
  factory $CatsCopyWith(Cats value, $Res Function(Cats) then) =
      _$CatsCopyWithImpl<$Res>;
  $Res call({String id, String url, int width, int height});
}

/// @nodoc
class _$CatsCopyWithImpl<$Res> implements $CatsCopyWith<$Res> {
  _$CatsCopyWithImpl(this._value, this._then);

  final Cats _value;
  // ignore: unused_field
  final $Res Function(Cats) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CatsCopyWith<$Res> implements $CatsCopyWith<$Res> {
  factory _$CatsCopyWith(_Cats value, $Res Function(_Cats) then) =
      __$CatsCopyWithImpl<$Res>;
  @override
  $Res call({String id, String url, int width, int height});
}

/// @nodoc
class __$CatsCopyWithImpl<$Res> extends _$CatsCopyWithImpl<$Res>
    implements _$CatsCopyWith<$Res> {
  __$CatsCopyWithImpl(_Cats _value, $Res Function(_Cats) _then)
      : super(_value, (v) => _then(v as _Cats));

  @override
  _Cats get _value => super._value as _Cats;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_Cats(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Cats extends _Cats {
  const _$_Cats(
      {required this.id,
      required this.url,
      required this.width,
      required this.height})
      : super._();

  factory _$_Cats.fromJson(Map<String, dynamic> json) => _$$_CatsFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'Cats(id: $id, url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cats &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$CatsCopyWith<_Cats> get copyWith =>
      __$CatsCopyWithImpl<_Cats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatsToJson(this);
  }
}

abstract class _Cats extends Cats {
  const factory _Cats(
      {required String id,
      required String url,
      required int width,
      required int height}) = _$_Cats;
  const _Cats._() : super._();

  factory _Cats.fromJson(Map<String, dynamic> json) = _$_Cats.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(ignore: true)
  _$CatsCopyWith<_Cats> get copyWith => throw _privateConstructorUsedError;
}
