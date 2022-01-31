import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


part 'breeds_model.freezed.dart';
part 'breeds_model.g.dart';

@freezed
class Breeds with _$Breeds {
  const Breeds._();

  @JsonSerializable(explicitToJson: true)
  const factory Breeds(
      {required String id, required String name,
      }) = _Breeds;

  factory Breeds.fromJson(Map<String, dynamic> json) => _$BreedsFromJson(json);
}
