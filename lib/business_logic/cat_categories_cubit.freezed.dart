// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatCategoriesStateTearOff {
  const _$CatCategoriesStateTearOff();

  _CatCategoriesLoading loading({required Loading loading}) {
    return _CatCategoriesLoading(
      loading: loading,
    );
  }

  _CatCategoriesLoaded loaded({required List<CatCategoriesModel> categories}) {
    return _CatCategoriesLoaded(
      categories: categories,
    );
  }
}

/// @nodoc
const $CatCategoriesState = _$CatCategoriesStateTearOff();

/// @nodoc
mixin _$CatCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Loading loading) loading,
    required TResult Function(List<CatCategoriesModel> categories) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatCategoriesModel> categories)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatCategoriesModel> categories)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatCategoriesLoading value) loading,
    required TResult Function(_CatCategoriesLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CatCategoriesLoading value)? loading,
    TResult Function(_CatCategoriesLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatCategoriesLoading value)? loading,
    TResult Function(_CatCategoriesLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatCategoriesStateCopyWith<$Res> {
  factory $CatCategoriesStateCopyWith(
          CatCategoriesState value, $Res Function(CatCategoriesState) then) =
      _$CatCategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatCategoriesStateCopyWithImpl<$Res>
    implements $CatCategoriesStateCopyWith<$Res> {
  _$CatCategoriesStateCopyWithImpl(this._value, this._then);

  final CatCategoriesState _value;
  // ignore: unused_field
  final $Res Function(CatCategoriesState) _then;
}

/// @nodoc
abstract class _$CatCategoriesLoadingCopyWith<$Res> {
  factory _$CatCategoriesLoadingCopyWith(_CatCategoriesLoading value,
          $Res Function(_CatCategoriesLoading) then) =
      __$CatCategoriesLoadingCopyWithImpl<$Res>;
  $Res call({Loading loading});
}

/// @nodoc
class __$CatCategoriesLoadingCopyWithImpl<$Res>
    extends _$CatCategoriesStateCopyWithImpl<$Res>
    implements _$CatCategoriesLoadingCopyWith<$Res> {
  __$CatCategoriesLoadingCopyWithImpl(
      _CatCategoriesLoading _value, $Res Function(_CatCategoriesLoading) _then)
      : super(_value, (v) => _then(v as _CatCategoriesLoading));

  @override
  _CatCategoriesLoading get _value => super._value as _CatCategoriesLoading;

  @override
  $Res call({
    Object? loading = freezed,
  }) {
    return _then(_CatCategoriesLoading(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as Loading,
    ));
  }
}

/// @nodoc

class _$_CatCategoriesLoading implements _CatCategoriesLoading {
  const _$_CatCategoriesLoading({required this.loading});

  @override
  final Loading loading;

  @override
  String toString() {
    return 'CatCategoriesState.loading(loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatCategoriesLoading &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$CatCategoriesLoadingCopyWith<_CatCategoriesLoading> get copyWith =>
      __$CatCategoriesLoadingCopyWithImpl<_CatCategoriesLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Loading loading) loading,
    required TResult Function(List<CatCategoriesModel> categories) loaded,
  }) {
    return loading(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatCategoriesModel> categories)? loaded,
  }) {
    return loading?.call(this.loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatCategoriesModel> categories)? loaded,
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
    required TResult Function(_CatCategoriesLoading value) loading,
    required TResult Function(_CatCategoriesLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CatCategoriesLoading value)? loading,
    TResult Function(_CatCategoriesLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatCategoriesLoading value)? loading,
    TResult Function(_CatCategoriesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CatCategoriesLoading implements CatCategoriesState {
  const factory _CatCategoriesLoading({required Loading loading}) =
      _$_CatCategoriesLoading;

  Loading get loading;
  @JsonKey(ignore: true)
  _$CatCategoriesLoadingCopyWith<_CatCategoriesLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CatCategoriesLoadedCopyWith<$Res> {
  factory _$CatCategoriesLoadedCopyWith(_CatCategoriesLoaded value,
          $Res Function(_CatCategoriesLoaded) then) =
      __$CatCategoriesLoadedCopyWithImpl<$Res>;
  $Res call({List<CatCategoriesModel> categories});
}

/// @nodoc
class __$CatCategoriesLoadedCopyWithImpl<$Res>
    extends _$CatCategoriesStateCopyWithImpl<$Res>
    implements _$CatCategoriesLoadedCopyWith<$Res> {
  __$CatCategoriesLoadedCopyWithImpl(
      _CatCategoriesLoaded _value, $Res Function(_CatCategoriesLoaded) _then)
      : super(_value, (v) => _then(v as _CatCategoriesLoaded));

  @override
  _CatCategoriesLoaded get _value => super._value as _CatCategoriesLoaded;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_CatCategoriesLoaded(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CatCategoriesModel>,
    ));
  }
}

/// @nodoc

class _$_CatCategoriesLoaded implements _CatCategoriesLoaded {
  const _$_CatCategoriesLoaded({required this.categories});

  @override
  final List<CatCategoriesModel> categories;

  @override
  String toString() {
    return 'CatCategoriesState.loaded(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatCategoriesLoaded &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(categories));

  @JsonKey(ignore: true)
  @override
  _$CatCategoriesLoadedCopyWith<_CatCategoriesLoaded> get copyWith =>
      __$CatCategoriesLoadedCopyWithImpl<_CatCategoriesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Loading loading) loading,
    required TResult Function(List<CatCategoriesModel> categories) loaded,
  }) {
    return loaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatCategoriesModel> categories)? loaded,
  }) {
    return loaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Loading loading)? loading,
    TResult Function(List<CatCategoriesModel> categories)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatCategoriesLoading value) loading,
    required TResult Function(_CatCategoriesLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CatCategoriesLoading value)? loading,
    TResult Function(_CatCategoriesLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatCategoriesLoading value)? loading,
    TResult Function(_CatCategoriesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CatCategoriesLoaded implements CatCategoriesState {
  const factory _CatCategoriesLoaded(
      {required List<CatCategoriesModel> categories}) = _$_CatCategoriesLoaded;

  List<CatCategoriesModel> get categories;
  @JsonKey(ignore: true)
  _$CatCategoriesLoadedCopyWith<_CatCategoriesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
