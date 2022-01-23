import 'package:anAbundanceOfCats/data/models/weight_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:anAbundanceOfCats/data/models/image_model.dart';

part 'breeds_model.freezed.dart';
part 'breeds_model.g.dart';

@freezed
class Breeds with _$Breeds {
  const Breeds._();

  @JsonSerializable(explicitToJson: true)
  const factory Breeds(
      {required Weight weight,
      required String id,
      required String name,
      required String cfaUrl,
      required String vetstreetUrl,
      required String vcahospitalsUrl,
      required String temperament,
      required String origin,
      required String countryCodes,
      required String countryCode,
      required String description,
      required String lifeSpan,
      required int indoor,
      required int lap,
      required String altNames,
      required int adaptability,
      required int affectionLevel,
      required int childFriendly,
      required int dogFriendly,
      required int energyLevel,
      required int grooming,
      required int healthIssues,
      required int intelligence,
      required int sheddingLevel,
      required int socialNeeds,
      required int strangerFriendly,
      required int vocalisation,
      required int experimental,
      required int hairless,
      required int natural,
      required int rare,
      required int rex,
      required int suppressedTail,
      required int shortLegs,
      required String wikipediaUrl,
      required int hypoallergenic,
      required String referenceImageId,
      required CatImage catImage}) = _Breeds;

  factory Breeds.fromJson(Map<String, dynamic> json) => _$BreedsFromJson(json);
}
