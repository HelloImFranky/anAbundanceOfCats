import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weight_model.freezed.dart';
part 'weight_model.g.dart';

@freezed
class Weight with _$Weight {
  const Weight._();

  @JsonSerializable(explicitToJson: true)
  const factory Weight({required String imperial, required String metric}) = _Weight;

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
}