import 'package:anAbundanceOfCats/business_logic/cat_images_by_categories_cubit.dart';
import 'package:anAbundanceOfCats/data/models/cat_categories_model.dart';
import 'package:anAbundanceOfCats/data/models/cat_images_by_category.dart';
import 'package:anAbundanceOfCats/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/cat_categories_cubit.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  String selectedCategory = "1";
  int catId = 1;
  int limit = 3;
  int page = 1;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CatCategoriesCubit>(context).getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Search Engine')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text("Available Categories"),
              const SizedBox(height: 5),
              _buildDropDownButton(),
              _buildDropDownResults(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropDownButton() {
    final state = context.watch<CatCategoriesCubit>().state;
    return state.when(
      loading: (loading) => loading,
      loaded: (loaded) => DropdownButton(
          hint: const Text("Click for Categories"),
          value: selectedCategory,
          onChanged: (category) {
            setState(() {
              selectedCategory = category.toString();
              catId = _convertCategoryToId(selectedCategory);
              BlocProvider.of<CatImagesByCategoriesCubit>(context)
                  .getCatsByCategories(catId, limit, page);
            });
          },
          items: <DropdownMenuItem<String>>[
            ...loaded.map((cats) => DropdownMenuItem(
                child: Text(cats.name), value: cats.id.toString())),
          ]),
    );
  }

   int _convertCategoryToId(String category) {
    var tempCategoryList =
        BlocProvider.of<CatCategoriesCubit>(context).categoriesList;
    return tempCategoryList.firstWhere((element) => element.name == category).id;
  }

  Widget _buildDropDownResults() {
    final catImagesState =
        BlocProvider.of<CatImagesByCategoriesCubit>(context).state;
    return catImagesState.when(
      loading: (loading) => const Text(""),
      loaded: (loaded) => Column(
        children: [
          const SizedBox(height: 30),
          ...loaded.map((e) => Image.network(e.url)),
        ],
      ),
    );
  }
}
