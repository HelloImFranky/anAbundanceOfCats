import 'breeds_model.dart';

class BreedSearchResultModel {
  List<Breeds> breeds = <Breeds>[];
  String? id;
  String url="";
  int? width;
  int? height;

  BreedSearchResultModel(
      {required this.breeds, this.id, required this.url, this.width, this.height});

  BreedSearchResultModel.fromJson(Map<String, dynamic> json) {
    json['breeds'].forEach((v) {
      breeds.add(Breeds.fromJson(v));
    });
    id = json['id'];
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['breeds'] = breeds.map((v) => v.toJson()).toList();
    data['id'] = id;
    data['url'] = url;
    data['width'] = width;
    data['height'] = height;
    return data;
  }

  @override
  String toString() {
    return 'BreedSearchResultModel{breeds: $breeds, id: $id, url: $url, width: $width, height: $height}';
  }
}