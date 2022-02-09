import 'package:anAbundanceOfCats/data/models/cat_categories_model.dart';
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
  String selectedCategory = "boxes";

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CatCategoriesCubit>(context).getCategories();
  }

  @override
  void dispose() {
    super.dispose();
    BlocProvider.of<CatCategoriesCubit>(context).close();
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropDownButton() {
    final state = context.watch<CatCategoriesCubit>().state;
    return DropdownButton(
        hint: const Text("Click for Categories"),
        value: selectedCategory,
        onChanged: (category) {
          setState(() {
            selectedCategory = category.toString();
          });
        },
        items: <DropdownMenuItem<String>>[
          ...state.when(
              loaded: (loaded) {
                return loaded.map((category) => DropdownMenuItem(
                    child: Text(category.name), value: category.name));
              },
              loading: (loading) => [
                     DropdownMenuItem(
                        child: loading, value: "loading"),
                  ]),
        ]);
  }
}
