// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breeds_search_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BreedSearchResultModel _$$_BreedSearchResultModelFromJson(
        Map<String, dynamic> json) =>
    _$_BreedSearchResultModel(
      breeds: (json['breeds'] as List<dynamic>)
          .map((e) => Breeds.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      url: json['url'] as String,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$$_BreedSearchResultModelToJson(
        _$_BreedSearchResultModel instance) =>
    <String, dynamic>{
      'breeds': instance.breeds.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
