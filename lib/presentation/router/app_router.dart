import 'package:anAbundanceOfCats/business_logic/blocs/breed_name_app_bar_background_bloc.dart';
import 'package:anAbundanceOfCats/business_logic/blocs/breed_results_bloc.dart';
import 'package:anAbundanceOfCats/business_logic/cat_images_by_categories_cubit.dart';
import 'package:anAbundanceOfCats/presentation/view/page_breedslist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/blocs/breed_name_list_bloc.dart';
import '../../business_logic/blocs/single_cat_display_bloc.dart';
import '../../business_logic/cat_categories_cubit.dart';
import '../../data/repository/cat_repository.dart';
import '../view/categories_view.dart';
import '../view/welcome_view.dart';

class AppRouter {
  final SingleCatDisplayBloc _catBloc = SingleCatDisplayBloc(CatRepository());

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (catContext) => _catBloc),
          ],
            child: const WelcomePage(),
          ),
        );
      default:
        return null;
    }
  }
}
