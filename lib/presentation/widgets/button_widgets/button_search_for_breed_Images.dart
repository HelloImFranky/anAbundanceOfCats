import 'package:flutter/material.dart';

import '../../../data/models/user_breed_choice_model.dart';

class SearchForBreedImagesElevatedButton extends StatelessWidget {
  const SearchForBreedImagesElevatedButton(
      {Key? key, required this.breed, required this.index})
      : super(key: key);

  final Map<String, String> breed;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.grey[500]),
        onPressed: () {

        },
        child: Text(breed.keys.elementAt(index)));
  }
}
