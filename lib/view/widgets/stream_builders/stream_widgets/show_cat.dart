import 'package:flutter/cupertino.dart';

import '../../../../models/cats_model.dart';

class ShowCat extends StatelessWidget {
  const ShowCat({Key? key, required this.cat}) : super(key: key);

  final Cats cat;

  @override
  Widget build(BuildContext context) {
    return Image.network(cat.url);
  }
}