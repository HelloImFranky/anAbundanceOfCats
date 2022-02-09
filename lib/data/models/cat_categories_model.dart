import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cat_categories_model.freezed.dart';
part 'cat_categories_model.g.dart';

@freezed
class CatCategoriesModel with _$CatCategoriesModel {
  const CatCategoriesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CatCategoriesModel({required String name}) =
      _CatCategoriesModel;

  factory CatCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CatCategoriesModelFromJson(json);
}
