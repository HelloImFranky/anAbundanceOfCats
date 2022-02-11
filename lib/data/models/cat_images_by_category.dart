import 'package:anAbundanceOfCats/data/models/cat_categories_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cat_images_by_category.freezed.dart';
part 'cat_images_by_category.g.dart';

@freezed
class CatImagesByCategoryModel with _$CatImagesByCategoryModel{
  const CatImagesByCategoryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CatImagesByCategoryModel({
  required List<CatCategoriesModel> categories,
  required String url,
}) = _CatImagesByCategoryModel;

  factory CatImagesByCategoryModel.fromJson(Map<String,dynamic> json) => _$CatImagesByCategoryModelFromJson(json);
}