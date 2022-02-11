// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatCategoriesModel _$CatCategoriesModelFromJson(Map<String, dynamic> json) {
  return _CatCategoriesModel.fromJson(json);
}

/// @nodoc
class _$CatCategoriesModelTearOff {
  const _$CatCategoriesModelTearOff();

  _CatCategoriesModel call({required String name, required int id}) {
    return _CatCategoriesModel(
      name: name,
      id: id,
    );
  }

  CatCategoriesModel fromJson(Map<String, Object?> json) {
    return CatCategoriesModel.fromJson(json);
  }
}

/// @nodoc
const $CatCategoriesModel = _$CatCategoriesModelTearOff();

/// @nodoc
mixin _$CatCategoriesModel {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatCategoriesModelCopyWith<CatCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatCategoriesModelCopyWith<$Res> {
  factory $CatCategoriesModelCopyWith(
          CatCategoriesModel value, $Res Function(CatCategoriesModel) then) =
      _$CatCategoriesModelCopyWithImpl<$Res>;
  $Res call({String name, int id});
}

/// @nodoc
class _$CatCategoriesModelCopyWithImpl<$Res>
    implements $CatCategoriesModelCopyWith<$Res> {
  _$CatCategoriesModelCopyWithImpl(this._value, this._then);

  final CatCategoriesModel _value;
  // ignore: unused_field
  final $Res Function(CatCategoriesModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CatCategoriesModelCopyWith<$Res>
    implements $CatCategoriesModelCopyWith<$Res> {
  factory _$CatCategoriesModelCopyWith(
          _CatCategoriesModel value, $Res Function(_CatCategoriesModel) then) =
      __$CatCategoriesModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, int id});
}

/// @nodoc
class __$CatCategoriesModelCopyWithImpl<$Res>
    extends _$CatCategoriesModelCopyWithImpl<$Res>
    implements _$CatCategoriesModelCopyWith<$Res> {
  __$CatCategoriesModelCopyWithImpl(
      _CatCategoriesModel _value, $Res Function(_CatCategoriesModel) _then)
      : super(_value, (v) => _then(v as _CatCategoriesModel));

  @override
  _CatCategoriesModel get _value => super._value as _CatCategoriesModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_CatCategoriesModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CatCategoriesModel extends _CatCategoriesModel {
  const _$_CatCategoriesModel({required this.name, required this.id})
      : super._();

  factory _$_CatCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CatCategoriesModelFromJson(json);

  @override
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'CatCategoriesModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatCategoriesModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$CatCategoriesModelCopyWith<_CatCategoriesModel> get copyWith =>
      __$CatCategoriesModelCopyWithImpl<_CatCategoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatCategoriesModelToJson(this);
  }
}

abstract class _CatCategoriesModel extends CatCategoriesModel {
  const factory _CatCategoriesModel({required String name, required int id}) =
      _$_CatCategoriesModel;
  const _CatCategoriesModel._() : super._();

  factory _CatCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_CatCategoriesModel.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$CatCategoriesModelCopyWith<_CatCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
