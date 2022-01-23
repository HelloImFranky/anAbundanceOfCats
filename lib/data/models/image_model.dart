import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';


@freezed
class CatImage with _$CatImage{
  const CatImage._();

  @JsonSerializable(explicitToJson: true)
  const factory CatImage({required String id, required int width, required int height, required String url}) = _CatImage;

  factory CatImage.fromJson(Map<String, dynamic> json) => _$CatImageFromJson(json);
}