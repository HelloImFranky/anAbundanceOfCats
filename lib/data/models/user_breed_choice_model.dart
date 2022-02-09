import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_breed_choice_model.freezed.dart';
part 'user_breed_choice_model.g.dart';


@freezed
class UserBreedChoiceCode with _$UserBreedChoiceCode {
  const UserBreedChoiceCode._();

  @JsonSerializable(explicitToJson: true)
  const factory UserBreedChoiceCode({
    required String? breedCode,
    required String? breedName,
}) = _UserBreedChoiceCode;

  factory UserBreedChoiceCode.fromJson(Map<String, dynamic> json) => _$UserBreedChoiceCodeFromJson(json);
}