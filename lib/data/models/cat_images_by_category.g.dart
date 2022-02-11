// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_images_by_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatImagesByCategoryModel _$$_CatImagesByCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_CatImagesByCategoryModel(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CatCategoriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_CatImagesByCategoryModelToJson(
        _$_CatImagesByCategoryModel instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'url': instance.url,
    };
