import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'cats_model.freezed.dart';
part 'cats_model.g.dart';

@freezed
class Cats with _$Cats {
  const Cats._();

  @JsonSerializable(explicitToJson: true)
  const factory Cats({
    required String id,
    required String url,
    required int width,
    required int height,
  }) = _Cats;

  factory Cats.fromJson(Map<String, dynamic> json) => _$CatsFromJson(json);
}
  //
  // Cats({required this.id,required this.url,required this.width,required this.height});
  //
  // Cats.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   url = json['url'];
  //   width = json['width'];
  //   height = json['height'];
  // }
  //
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['url'] = url;
  //   data['width'] = width;
  //   data['height'] = height;
  //   return data;
  // }
// }
