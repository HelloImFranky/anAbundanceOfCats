import 'package:flutter/material.dart';

import '../../../business_logic/blocs/cats_bloc.dart';


class MoreCatsElevatedButton extends StatelessWidget {
  const MoreCatsElevatedButton({Key? key,required this.catBloc}) : super(key: key);
  final CatsBloc catBloc;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[700],
          onPrimary: Colors.white,
          onSurface: Colors.grey,
        ),
        onPressed: ()=>catBloc.fetchCat(),
        child: const Text('Show me more cats!'));
  }
}
