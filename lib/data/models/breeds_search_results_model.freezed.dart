// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'breeds_search_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BreedSearchResultModel _$BreedSearchResultModelFromJson(
    Map<String, dynamic> json) {
  return _BreedSearchResultModel.fromJson(json);
}

/// @nodoc
class _$BreedSearchResultModelTearOff {
  const _$BreedSearchResultModelTearOff();

  _BreedSearchResultModel call(
      {required List<Breeds> breeds,
      required String? id,
      required String url,
      required int? width,
      required int? height}) {
    return _BreedSearchResultModel(
      breeds: breeds,
      id: id,
      url: url,
      width: width,
      height: height,
    );
  }

  BreedSearchResultModel fromJson(Map<String, Object?> json) {
    return BreedSearchResultModel.fromJson(json);
  }
}

/// @nodoc
const $BreedSearchResultModel = _$BreedSearchResultModelTearOff();

/// @nodoc
mixin _$BreedSearchResultModel {
  List<Breeds> get breeds => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedSearchResultModelCopyWith<BreedSearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedSearchResultModelCopyWith<$Res> {
  factory $BreedSearchResultModelCopyWith(BreedSearchResultModel value,
          $Res Function(BreedSearchResultModel) then) =
      _$BreedSearchResultModelCopyWithImpl<$Res>;
  $Res call(
      {List<Breeds> breeds, String? id, String url, int? width, int? height});
}

/// @nodoc
class _$BreedSearchResultModelCopyWithImpl<$Res>
    implements $BreedSearchResultModelCopyWith<$Res> {
  _$BreedSearchResultModelCopyWithImpl(this._value, this._then);

  final BreedSearchResultModel _value;
  // ignore: unused_field
  final $Res Function(BreedSearchResultModel) _then;

  @override
  $Res call({
    Object? breeds = freezed,
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      breeds: breeds == freezed
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breeds>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BreedSearchResultModelCopyWith<$Res>
    implements $BreedSearchResultModelCopyWith<$Res> {
  factory _$BreedSearchResultModelCopyWith(_BreedSearchResultModel value,
          $Res Function(_BreedSearchResultModel) then) =
      __$BreedSearchResultModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Breeds> breeds, String? id, String url, int? width, int? height});
}

/// @nodoc
class __$BreedSearchResultModelCopyWithImpl<$Res>
    extends _$BreedSearchResultModelCopyWithImpl<$Res>
    implements _$BreedSearchResultModelCopyWith<$Res> {
  __$BreedSearchResultModelCopyWithImpl(_BreedSearchResultModel _value,
      $Res Function(_BreedSearchResultModel) _then)
      : super(_value, (v) => _then(v as _BreedSearchResultModel));

  @override
  _BreedSearchResultModel get _value => super._value as _BreedSearchResultModel;

  @override
  $Res call({
    Object? breeds = freezed,
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_BreedSearchResultModel(
      breeds: breeds == freezed
          ? _value.breeds
          : breeds // ignore: cast_nullable_to_non_nullable
              as List<Breeds>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BreedSearchResultModel extends _BreedSearchResultModel {
  const _$_BreedSearchResultModel(
      {required this.breeds,
      required this.id,
      required this.url,
      required this.width,
      required this.height})
      : super._();

  factory _$_BreedSearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_BreedSearchResultModelFromJson(json);

  @override
  final List<Breeds> breeds;
  @override
  final String? id;
  @override
  final String url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'BreedSearchResultModel(breeds: $breeds, id: $id, url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BreedSearchResultModel &&
            const DeepCollectionEquality().equals(other.breeds, breeds) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(breeds),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$BreedSearchResultModelCopyWith<_BreedSearchResultModel> get copyWith =>
      __$BreedSearchResultModelCopyWithImpl<_BreedSearchResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BreedSearchResultModelToJson(this);
  }
}

abstract class _BreedSearchResultModel extends BreedSearchResultModel {
  const factory _BreedSearchResultModel(
      {required List<Breeds> breeds,
      required String? id,
      required String url,
      required int? width,
      required int? height}) = _$_BreedSearchResultModel;
  const _BreedSearchResultModel._() : super._();

  factory _BreedSearchResultModel.fromJson(Map<String, dynamic> json) =
      _$_BreedSearchResultModel.fromJson;

  @override
  List<Breeds> get breeds;
  @override
  String? get id;
  @override
  String get url;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$BreedSearchResultModelCopyWith<_BreedSearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
