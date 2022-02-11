// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_images_by_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatImagesByCategoryModel _$CatImagesByCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _CatImagesByCategoryModel.fromJson(json);
}

/// @nodoc
class _$CatImagesByCategoryModelTearOff {
  const _$CatImagesByCategoryModelTearOff();

  _CatImagesByCategoryModel call(
      {required List<CatCategoriesModel> categories, required String url}) {
    return _CatImagesByCategoryModel(
      categories: categories,
      url: url,
    );
  }

  CatImagesByCategoryModel fromJson(Map<String, Object?> json) {
    return CatImagesByCategoryModel.fromJson(json);
  }
}

/// @nodoc
const $CatImagesByCategoryModel = _$CatImagesByCategoryModelTearOff();

/// @nodoc
mixin _$CatImagesByCategoryModel {
  List<CatCategoriesModel> get categories => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatImagesByCategoryModelCopyWith<CatImagesByCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImagesByCategoryModelCopyWith<$Res> {
  factory $CatImagesByCategoryModelCopyWith(CatImagesByCategoryModel value,
          $Res Function(CatImagesByCategoryModel) then) =
      _$CatImagesByCategoryModelCopyWithImpl<$Res>;
  $Res call({List<CatCategoriesModel> categories, String url});
}

/// @nodoc
class _$CatImagesByCategoryModelCopyWithImpl<$Res>
    implements $CatImagesByCategoryModelCopyWith<$Res> {
  _$CatImagesByCategoryModelCopyWithImpl(this._value, this._then);

  final CatImagesByCategoryModel _value;
  // ignore: unused_field
  final $Res Function(CatImagesByCategoryModel) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CatCategoriesModel>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CatImagesByCategoryModelCopyWith<$Res>
    implements $CatImagesByCategoryModelCopyWith<$Res> {
  factory _$CatImagesByCategoryModelCopyWith(_CatImagesByCategoryModel value,
          $Res Function(_CatImagesByCategoryModel) then) =
      __$CatImagesByCategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({List<CatCategoriesModel> categories, String url});
}

/// @nodoc
class __$CatImagesByCategoryModelCopyWithImpl<$Res>
    extends _$CatImagesByCategoryModelCopyWithImpl<$Res>
    implements _$CatImagesByCategoryModelCopyWith<$Res> {
  __$CatImagesByCategoryModelCopyWithImpl(_CatImagesByCategoryModel _value,
      $Res Function(_CatImagesByCategoryModel) _then)
      : super(_value, (v) => _then(v as _CatImagesByCategoryModel));

  @override
  _CatImagesByCategoryModel get _value =>
      super._value as _CatImagesByCategoryModel;

  @override
  $Res call({
    Object? categories = freezed,
    Object? url = freezed,
  }) {
    return _then(_CatImagesByCategoryModel(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CatCategoriesModel>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CatImagesByCategoryModel extends _CatImagesByCategoryModel {
  const _$_CatImagesByCategoryModel(
      {required this.categories, required this.url})
      : super._();

  factory _$_CatImagesByCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CatImagesByCategoryModelFromJson(json);

  @override
  final List<CatCategoriesModel> categories;
  @override
  final String url;

  @override
  String toString() {
    return 'CatImagesByCategoryModel(categories: $categories, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatImagesByCategoryModel &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$CatImagesByCategoryModelCopyWith<_CatImagesByCategoryModel> get copyWith =>
      __$CatImagesByCategoryModelCopyWithImpl<_CatImagesByCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatImagesByCategoryModelToJson(this);
  }
}

abstract class _CatImagesByCategoryModel extends CatImagesByCategoryModel {
  const factory _CatImagesByCategoryModel(
      {required List<CatCategoriesModel> categories,
      required String url}) = _$_CatImagesByCategoryModel;
  const _CatImagesByCategoryModel._() : super._();

  factory _CatImagesByCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CatImagesByCategoryModel.fromJson;

  @override
  List<CatCategoriesModel> get categories;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$CatImagesByCategoryModelCopyWith<_CatImagesByCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
