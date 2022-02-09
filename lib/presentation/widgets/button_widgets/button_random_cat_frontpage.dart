import 'package:anAbundanceOfCats/business_logic/blocs/single_cat_display_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view/page_single_cat_result.dart';

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
          final _catBloc = BlocProvider.of<SingleCatDisplayBloc>(context);
          Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _catBloc..add(const SingleCatDisplayEvent.displayCat()),
              child: const ResultPage(),
            ),
          ),
          );
        });
  }
}
