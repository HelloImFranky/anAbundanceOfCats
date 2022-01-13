class Cats {
  String id ='';
  String url = '';
  int width = 0;
  int height = 0;

  Cats({required this.id,required this.url,required this.width,required this.height});

  Cats.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['url'] = url;
    data['width'] = width;
    data['height'] = height;
    return data;
  }
}
