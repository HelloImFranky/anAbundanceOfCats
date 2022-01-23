import 'package:anAbundanceOfCats/presentation/view/page_allbreeds_choice_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/blocs/breed_name_list_bloc.dart';
import '../../business_logic/blocs/single_cat_display_bloc.dart';
import '../view/page_onerandomcat_result.dart';
import '../view/welcome_view.dart';

class AppRouter {

  final SingleCatDisplayBloc _catBloc = SingleCatDisplayBloc();
  final BreedNameListBloc _breedsNameListBloc = BreedNameListBloc();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
        );
      case '/resultPage':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _catBloc..add(const SingleCatDisplayEvent.displayCat()),
            child: const ResultPage(),
          ),
        );
      case '/breedNameSearchPage':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value:_breedsNameListBloc..add(const BreedNameListEvent.displayBreedNames(),),
          child: const BreedNameSearchPage(),
          ),
        );
      case '/breedResultPage':
        return MaterialPageRoute(builder: (_) => const ResultPage(),);
      default:
        return null;
    }
  }


}
