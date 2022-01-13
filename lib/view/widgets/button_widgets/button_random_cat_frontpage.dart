import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RandomCatFPElevatedButton extends StatelessWidget {
  const RandomCatFPElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 75),
          primary: Colors.grey[500],
        ),
        child: const Text('I\'m feeling lucky!'),
        onPressed: () {
          Navigator.pushNamed(context, '/resultPage');
        });
  }
}
