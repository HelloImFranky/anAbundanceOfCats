import 'package:anAbundanceOfCats/presentation/view/categories_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/cat_categories_cubit.dart';
import '../../../business_logic/cat_images_by_categories_cubit.dart';
import '../../../data/repository/cat_repository.dart';

class SearchByCategoriesElevatedButton extends StatelessWidget {
  const SearchByCategoriesElevatedButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 75),
          primary: Colors.grey[500],
        ),
        child: const Text('Search By Category'),
        onPressed: () {
          final CatCategoriesCubit _categoriesCubit =
          CatCategoriesCubit(CatRepository());
          final CatImagesByCategoriesCubit _catFromCategoriesImages = CatImagesByCategoriesCubit(CatRepository());
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        lazy: false,
                        create: (categoriesContext) => _categoriesCubit,
                      ),
                      BlocProvider(
                        lazy: false,
                        create: (catFromCategoriesContext) =>
                            _catFromCategoriesImages,
                      ),
                    ],
                    child: const CategoriesPage(),
                  )));
        });
  }
}
