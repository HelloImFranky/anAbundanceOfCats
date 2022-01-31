import 'package:anAbundanceOfCats/business_logic/blocs/breed_name_app_bar_background_bloc.dart';
import 'package:anAbundanceOfCats/presentation/view/page_allbreeds_choice_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/blocs/breed_name_list_bloc.dart';
import '../../business_logic/blocs/single_cat_display_bloc.dart';
import '../view/page_breed_choice_image_results_.dart';
import '../view/page_onerandomcat_result.dart';
import '../view/welcome_view.dart';

class AppRouter {
  final SingleCatDisplayBloc _catBloc = SingleCatDisplayBloc();
  final BreedNameListBloc _breedsNameListBloc = BreedNameListBloc();
  final BreedNameAppBarBackgroundBloc _breedsNameListAppBarBloc =
      BreedNameAppBarBackgroundBloc();

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
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (breedContext) => _breedsNameListBloc),
              BlocProvider(create: (catContext) => _breedsNameListAppBarBloc),
            ],
            child: const BreedNameSearchPage(),
          ),
        );
      case '/breedResultPage':
        return MaterialPageRoute(
          builder: (_) => const BreedResultPage(),
        );
      default:
        return null;
    }
  }
}
