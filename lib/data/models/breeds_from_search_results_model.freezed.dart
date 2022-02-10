// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'breeds_from_search_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BreedsFromSearchResultsModel _$BreedsFromSearchResultsModelFromJson(
    Map<String, dynamic> json) {
  return _BreedsFromSearchResultsModel.fromJson(json);
}

/// @nodoc
class _$BreedsFromSearchResultsModelTearOff {
  const _$BreedsFromSearchResultsModelTearOff();

  _BreedsFromSearchResultsModel call(
      {required String id,
      required String name,
      required String description,
      required String wikipedia_url}) {
    return _BreedsFromSearchResultsModel(
      id: id,
      name: name,
      description: description,
      wikipedia_url: wikipedia_url,
    );
  }

  BreedsFromSearchResultsModel fromJson(Map<String, Object?> json) {
    return BreedsFromSearchResultsModel.fromJson(json);
  }
}

/// @nodoc
const $BreedsFromSearchResultsModel = _$BreedsFromSearchResultsModelTearOff();

/// @nodoc
mixin _$BreedsFromSearchResultsModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get wikipedia_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedsFromSearchResultsModelCopyWith<BreedsFromSearchResultsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedsFromSearchResultsModelCopyWith<$Res> {
  factory $BreedsFromSearchResultsModelCopyWith(
          BreedsFromSearchResultsModel value,
          $Res Function(BreedsFromSearchResultsModel) then) =
      _$BreedsFromSearchResultsModelCopyWithImpl<$Res>;
  $Res call({String id, String name, String description, String wikipedia_url});
}

/// @nodoc
class _$BreedsFromSearchResultsModelCopyWithImpl<$Res>
    implements $BreedsFromSearchResultsModelCopyWith<$Res> {
  _$BreedsFromSearchResultsModelCopyWithImpl(this._value, this._then);

  final BreedsFromSearchResultsModel _value;
  // ignore: unused_field
  final $Res Function(BreedsFromSearchResultsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? wikipedia_url = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      wikipedia_url: wikipedia_url == freezed
          ? _value.wikipedia_url
          : wikipedia_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BreedsFromSearchResultsModelCopyWith<$Res>
    implements $BreedsFromSearchResultsModelCopyWith<$Res> {
  factory _$BreedsFromSearchResultsModelCopyWith(
          _BreedsFromSearchResultsModel value,
          $Res Function(_BreedsFromSearchResultsModel) then) =
      __$BreedsFromSearchResultsModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String description, String wikipedia_url});
}

/// @nodoc
class __$BreedsFromSearchResultsModelCopyWithImpl<$Res>
    extends _$BreedsFromSearchResultsModelCopyWithImpl<$Res>
    implements _$BreedsFromSearchResultsModelCopyWith<$Res> {
  __$BreedsFromSearchResultsModelCopyWithImpl(
      _BreedsFromSearchResultsModel _value,
      $Res Function(_BreedsFromSearchResultsModel) _then)
      : super(_value, (v) => _then(v as _BreedsFromSearchResultsModel));

  @override
  _BreedsFromSearchResultsModel get _value =>
      super._value as _BreedsFromSearchResultsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? wikipedia_url = freezed,
  }) {
    return _then(_BreedsFromSearchResultsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      wikipedia_url: wikipedia_url == freezed
          ? _value.wikipedia_url
          : wikipedia_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BreedsFromSearchResultsModel extends _BreedsFromSearchResultsModel {
  const _$_BreedsFromSearchResultsModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.wikipedia_url})
      : super._();

  factory _$_BreedsFromSearchResultsModel.fromJson(Map<String, dynamic> json) =>
      _$$_BreedsFromSearchResultsModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String wikipedia_url;

  @override
  String toString() {
    return 'BreedsFromSearchResultsModel(id: $id, name: $name, description: $description, wikipedia_url: $wikipedia_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BreedsFromSearchResultsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.wikipedia_url, wikipedia_url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(wikipedia_url));

  @JsonKey(ignore: true)
  @override
  _$BreedsFromSearchResultsModelCopyWith<_BreedsFromSearchResultsModel>
      get copyWith => __$BreedsFromSearchResultsModelCopyWithImpl<
          _BreedsFromSearchResultsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BreedsFromSearchResultsModelToJson(this);
  }
}

abstract class _BreedsFromSearchResultsModel
    extends BreedsFromSearchResultsModel {
  const factory _BreedsFromSearchResultsModel(
      {required String id,
      required String name,
      required String description,
      required String wikipedia_url}) = _$_BreedsFromSearchResultsModel;
  const _BreedsFromSearchResultsModel._() : super._();

  factory _BreedsFromSearchResultsModel.fromJson(Map<String, dynamic> json) =
      _$_BreedsFromSearchResultsModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get wikipedia_url;
  @override
  @JsonKey(ignore: true)
  _$BreedsFromSearchResultsModelCopyWith<_BreedsFromSearchResultsModel>
      get copyWith => throw _privateConstructorUsedError;
}
