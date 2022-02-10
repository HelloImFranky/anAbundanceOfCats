import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'breeds_from_search_results_model.freezed.dart';
part 'breeds_from_search_results_model.g.dart';

@freezed
class BreedsFromSearchResultsModel with _$BreedsFromSearchResultsModel{
  const BreedsFromSearchResultsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory BreedsFromSearchResultsModel(
      {required String id, required String name, required String description, required String wikipedia_url,
      }) = _BreedsFromSearchResultsModel;

  factory BreedsFromSearchResultsModel.fromJson(Map<String, dynamic> json) => _$BreedsFromSearchResultsModelFromJson(json);
}
