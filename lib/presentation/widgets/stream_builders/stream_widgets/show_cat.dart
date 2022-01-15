

import 'package:flutter/material.dart';

import '../../../../data/models/cats_model.dart';



class ShowCat extends StatelessWidget {
  const ShowCat({Key? key, required this.cat}) : super(key: key);

  final Cats cat;

  @override
  Widget build(BuildContext context) {
    if(cat.height <= 600){
      return Image.network(
          cat.url);
    }
    else if(cat.height > 600){
      return Image.network(
          cat.url, scale: 2.5);
    }
    else if(cat.height > 1000){
      return Image.network(
          cat.url, scale: 4.0);
    }
    else if(cat.height > 1500){
      return Image.network(
          cat.url, scale: 4.5);
    }
    else if(cat.height > 2000){
      return Image.network(
          cat.url, scale: 6.0);
    }
    else if(cat.height > 3000){
      return Image.network(
          cat.url, scale: 9.0);
    }

    return Image.network(cat.url, scale: 1.5,);
  }
}