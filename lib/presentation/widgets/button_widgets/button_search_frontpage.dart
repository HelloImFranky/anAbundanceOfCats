import 'package:anAbundanceOfCats/business_logic/blocs/breed_name_app_bar_background_bloc.dart';
import 'package:anAbundanceOfCats/presentation/view/page_breedslist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/blocs/breed_name_list_bloc.dart';

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
          final BreedNameListBloc _breedsNameListBloc = BreedNameListBloc();
          final BreedNameAppBarBackgroundBloc _breedsNameListAppBarBloc =
          BreedNameAppBarBackgroundBloc();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => MultiBlocProvider(
                providers: [
                  BlocProvider(create: (catBarContext) => _breedsNameListAppBarBloc),
                  BlocProvider(create: (breedListContext) => _breedsNameListBloc),
                ],
                child: const BreedNameSearchPage(),
              ),
            ),
          );
        });
  }
}
