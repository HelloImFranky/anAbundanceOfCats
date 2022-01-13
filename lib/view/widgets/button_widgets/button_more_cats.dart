import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../blocs/cats_bloc.dart';

class MoreCatsElevatedButton extends StatelessWidget {
  const MoreCatsElevatedButton({Key? key, required this.bloc}) : super(key: key);
  final CatsBloc bloc;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[700],
          onPrimary: Colors.white,
          onSurface: Colors.grey,
        ),
        onPressed: ()=>bloc.fetchCat(),
        child: const Text('Show me more cats!'));
  }
}
