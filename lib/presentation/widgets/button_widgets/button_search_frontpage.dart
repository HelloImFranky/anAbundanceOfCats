import 'package:flutter/material.dart';

class SearchFPElevatedButton extends StatelessWidget {
  const SearchFPElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 75),
          primary: Colors.grey[500],
        ),
        child: const Text('Search By Breed'),
        onPressed: () {
          Navigator.pushNamed(context, '/searchPage');
        });
  }
}
