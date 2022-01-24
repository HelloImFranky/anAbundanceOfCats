import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/blocs/breed_name_list_bloc.dart';
import '../../../business_logic/blocs/single_cat_display_bloc.dart';

class SearchByBreedElevatedButton extends StatelessWidget {
  const SearchByBreedElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 75),
          primary: Colors.grey[500],
        ),
        child: const Text('Search By Breed'),
        onPressed: () {
          BlocProvider.of<SingleCatDisplayBloc>(context)
              .add(const SingleCatDisplayEvent.displayCat());
          BlocProvider.of<BreedNameListBloc>(context)
              .add(const BreedNameListEvent.displayBreedNames());
          Navigator.pushNamed(context, '/breedNameSearchPage');
        });
  }
}
