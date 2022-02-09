import 'breeds_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'breeds_search_results_model.freezed.dart';
part 'breeds_search_results_model.g.dart';

@freezed
class BreedSearchResultModel with _$BreedSearchResultModel {
  const BreedSearchResultModel._();

  @JsonSerializable(explicitToJson: true)
  const factory BreedSearchResultModel({
    required List<Breeds> breeds,
    required String? id,
    required String url,
    required int? width,
    required int? height,
  }) = _BreedSearchResultModel;

  factory BreedSearchResultModel.fromJson(Map<String, dynamic> json) => _$BreedSearchResultModelFromJson(json);
}