// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_images_by_categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatImagesByCategoriesStateTearOff {
  const _$CatImagesByCategoriesStateTearOff();

  _CatByCategoriesLoading loading({required Loading loading}) {
    return _CatByCategoriesLoading(
      loading: loading,
    );
  }

  _CatByCategoriesLoaded loaded(
      {required List<CatImagesByCategoryModel> catsByCategories}) {
    return _CatByCategoriesLoaded(
      catsByCategories: catsByCategories,
    );
  }
}

/// @nodoc
const $CatImagesByCategoriesState = _$CatImagesByCategoriesStateTearOff();

/// @nodoc
mixin _$CatImagesByCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Loading loading) loading,
    required TResult Function(List<CatImagesByCategoryModel> catsByCategories)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatImagesByCategoryModel> catsByCategories)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatImagesByCategoryModel> catsByCategories)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatByCategoriesLoading value) loading,
    required TResult Function(_CatByCategoriesLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CatByCategoriesLoading value)? loading,
    TResult Function(_CatByCategoriesLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatByCategoriesLoading value)? loading,
    TResult Function(_CatByCategoriesLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImagesByCategoriesStateCopyWith<$Res> {
  factory $CatImagesByCategoriesStateCopyWith(CatImagesByCategoriesState value,
          $Res Function(CatImagesByCategoriesState) then) =
      _$CatImagesByCategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatImagesByCategoriesStateCopyWithImpl<$Res>
    implements $CatImagesByCategoriesStateCopyWith<$Res> {
  _$CatImagesByCategoriesStateCopyWithImpl(this._value, this._then);

  final CatImagesByCategoriesState _value;
  // ignore: unused_field
  final $Res Function(CatImagesByCategoriesState) _then;
}

/// @nodoc
abstract class _$CatByCategoriesLoadingCopyWith<$Res> {
  factory _$CatByCategoriesLoadingCopyWith(_CatByCategoriesLoading value,
          $Res Function(_CatByCategoriesLoading) then) =
      __$CatByCategoriesLoadingCopyWithImpl<$Res>;
  $Res call({Loading loading});
}

/// @nodoc
class __$CatByCategoriesLoadingCopyWithImpl<$Res>
    extends _$CatImagesByCategoriesStateCopyWithImpl<$Res>
    implements _$CatByCategoriesLoadingCopyWith<$Res> {
  __$CatByCategoriesLoadingCopyWithImpl(_CatByCategoriesLoading _value,
      $Res Function(_CatByCategoriesLoading) _then)
      : super(_value, (v) => _then(v as _CatByCategoriesLoading));

  @override
  _CatByCategoriesLoading get _value => super._value as _CatByCategoriesLoading;

  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_CatByCategoriesLoading(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as Loading,
    ));
  }
}

/// @nodoc

class _$_CatByCategoriesLoading implements _CatByCategoriesLoading {
  const _$_CatByCategoriesLoading({required this.loading});

  @override
  final Loading loading;

  @override
  String toString() {
    return 'CatImagesByCategoriesState.loading(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatByCategoriesLoading &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$CatByCategoriesLoadingCopyWith<_CatByCategoriesLoading> get copyWith =>
      __$CatByCategoriesLoadingCopyWithImpl<_CatByCategoriesLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Loading loading) loading,
    required TResult Function(List<CatImagesByCategoryModel> catsByCategories)
        loaded,
  }) {
    return loading(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatImagesByCategoryModel> catsByCategories)? loaded,
  }) {
    return loading?.call(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatImagesByCategoryModel> catsByCategories)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatByCategoriesLoading value) loading,
    required TResult Function(_CatByCategoriesLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CatByCategoriesLoading value)? loading,
    TResult Function(_CatByCategoriesLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatByCategoriesLoading value)? loading,
    TResult Function(_CatByCategoriesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CatByCategoriesLoading implements CatImagesByCategoriesState {
  const factory _CatByCategoriesLoading({required Loading loading}) =
      _$_CatByCategoriesLoading;

  Loading get loading;
  @JsonKey(ignore: true)
  _$CatByCategoriesLoadingCopyWith<_CatByCategoriesLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CatByCategoriesLoadedCopyWith<$Res> {
  factory _$CatByCategoriesLoadedCopyWith(_CatByCategoriesLoaded value,
          $Res Function(_CatByCategoriesLoaded) then) =
      __$CatByCategoriesLoadedCopyWithImpl<$Res>;
  $Res call({List<CatImagesByCategoryModel> catsByCategories});
}

/// @nodoc
class __$CatByCategoriesLoadedCopyWithImpl<$Res>
    extends _$CatImagesByCategoriesStateCopyWithImpl<$Res>
    implements _$CatByCategoriesLoadedCopyWith<$Res> {
  __$CatByCategoriesLoadedCopyWithImpl(_CatByCategoriesLoaded _value,
      $Res Function(_CatByCategoriesLoaded) _then)
      : super(_value, (v) => _then(v as _CatByCategoriesLoaded));

  @override
  _CatByCategoriesLoaded get _value => super._value as _CatByCategoriesLoaded;

  @override
  $Res call({
    Object? catsByCategories = freezed,
  }) {
    return _then(_CatByCategoriesLoaded(
      catsByCategories: catsByCategories == freezed
          ? _value.catsByCategories
          : catsByCategories // ignore: cast_nullable_to_non_nullable
              as List<CatImagesByCategoryModel>,
    ));
  }
}

/// @nodoc

class _$_CatByCategoriesLoaded implements _CatByCategoriesLoaded {
  const _$_CatByCategoriesLoaded({required this.catsByCategories});

  @override
  final List<CatImagesByCategoryModel> catsByCategories;

  @override
  String toString() {
    return 'CatImagesByCategoriesState.loaded(catsByCategories: $catsByCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatByCategoriesLoaded &&
            const DeepCollectionEquality()
                .equals(other.catsByCategories, catsByCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(catsByCategories));

  @JsonKey(ignore: true)
  @override
  _$CatByCategoriesLoadedCopyWith<_CatByCategoriesLoaded> get copyWith =>
      __$CatByCategoriesLoadedCopyWithImpl<_CatByCategoriesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Loading loading) loading,
    required TResult Function(List<CatImagesByCategoryModel> catsByCategories)
        loaded,
  }) {
    return loaded(catsByCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatImagesByCategoryModel> catsByCategories)? loaded,
  }) {
    return loaded?.call(catsByCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatImagesByCategoryModel> catsByCategories)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(catsByCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatByCategoriesLoading value) loading,
    required TResult Function(_CatByCategoriesLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CatByCategoriesLoading value)? loading,
    TResult Function(_CatByCategoriesLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatByCategoriesLoading value)? loading,
    TResult Function(_CatByCategoriesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CatByCategoriesLoaded implements CatImagesByCategoriesState {
  const factory _CatByCategoriesLoaded(
          {required List<CatImagesByCategoryModel> catsByCategories}) =
      _$_CatByCategoriesLoaded;

  List<CatImagesByCategoryModel> get catsByCategories;
  @JsonKey(ignore: true)
  _$CatByCategoriesLoadedCopyWith<_CatByCategoriesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
