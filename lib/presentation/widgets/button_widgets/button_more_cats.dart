import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/blocs/single_cat_display_bloc.dart';

class MoreCatsElevatedButton extends StatelessWidget {
  const MoreCatsElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey[700],
          onPrimary: Colors.white,
          onSurface: Colors.grey,
        ),
        onPressed: () => {
              BlocProvider.of<SingleCatDisplayBloc>(context)
                  .add(const SingleCatDisplayEvent.displayLoadWidget()),
              BlocProvider.of<SingleCatDisplayBloc>(context)
                  .add(const SingleCatDisplayEvent.displayCat()),
            },
        child: const Text('Show me more cats!'));
  }
}
