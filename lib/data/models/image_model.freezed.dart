// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatImage _$CatImageFromJson(Map<String, dynamic> json) {
  return _CatImage.fromJson(json);
}

/// @nodoc
class _$CatImageTearOff {
  const _$CatImageTearOff();

  _CatImage call(
      {required String id,
      required int width,
      required int height,
      required String url}) {
    return _CatImage(
      id: id,
      width: width,
      height: height,
      url: url,
    );
  }

  CatImage fromJson(Map<String, Object?> json) {
    return CatImage.fromJson(json);
  }
}

/// @nodoc
const $CatImage = _$CatImageTearOff();

/// @nodoc
mixin _$CatImage {
  String get id => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatImageCopyWith<CatImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImageCopyWith<$Res> {
  factory $CatImageCopyWith(CatImage value, $Res Function(CatImage) then) =
      _$CatImageCopyWithImpl<$Res>;
  $Res call({String id, int width, int height, String url});
}

/// @nodoc
class _$CatImageCopyWithImpl<$Res> implements $CatImageCopyWith<$Res> {
  _$CatImageCopyWithImpl(this._value, this._then);

  final CatImage _value;
  // ignore: unused_field
  final $Res Function(CatImage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CatImageCopyWith<$Res> implements $CatImageCopyWith<$Res> {
  factory _$CatImageCopyWith(_CatImage value, $Res Function(_CatImage) then) =
      __$CatImageCopyWithImpl<$Res>;
  @override
  $Res call({String id, int width, int height, String url});
}

/// @nodoc
class __$CatImageCopyWithImpl<$Res> extends _$CatImageCopyWithImpl<$Res>
    implements _$CatImageCopyWith<$Res> {
  __$CatImageCopyWithImpl(_CatImage _value, $Res Function(_CatImage) _then)
      : super(_value, (v) => _then(v as _CatImage));

  @override
  _CatImage get _value => super._value as _CatImage;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
  }) {
    return _then(_CatImage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CatImage extends _CatImage {
  const _$_CatImage(
      {required this.id,
      required this.width,
      required this.height,
      required this.url})
      : super._();

  factory _$_CatImage.fromJson(Map<String, dynamic> json) =>
      _$$_CatImageFromJson(json);

  @override
  final String id;
  @override
  final int width;
  @override
  final int height;
  @override
  final String url;

  @override
  String toString() {
    return 'CatImage(id: $id, width: $width, height: $height, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatImage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$CatImageCopyWith<_CatImage> get copyWith =>
      __$CatImageCopyWithImpl<_CatImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatImageToJson(this);
  }
}

abstract class _CatImage extends CatImage {
  const factory _CatImage(
      {required String id,
      required int width,
      required int height,
      required String url}) = _$_CatImage;
  const _CatImage._() : super._();

  factory _CatImage.fromJson(Map<String, dynamic> json) = _$_CatImage.fromJson;

  @override
  String get id;
  @override
  int get width;
  @override
  int get height;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$CatImageCopyWith<_CatImage> get copyWith =>
      throw _privateConstructorUsedError;
}
