import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/cat_categories_cubit.dart';

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
          Navigator.pushNamed(context, '/categoriesPage');
        });
  }
}
