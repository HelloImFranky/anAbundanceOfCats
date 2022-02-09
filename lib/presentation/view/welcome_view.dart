import 'package:flutter/material.dart';

import '../widgets/button_widgets/button_categories_frontpage.dart';
import '../widgets/button_widgets/button_random_cat_frontpage.dart';
import '../widgets/button_widgets/button_search_frontpage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Search Engine')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 250,
            ),
            _buildRandomCatElevatedButton(),
            const SizedBox(
              height: 50,
            ),
            _buildSearchElevatedButton(),
            const SizedBox(
              height: 50,
            ),
            _buildCategoriesElevatedButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildRandomCatElevatedButton() {
    return const Center(
      child: RandomCatFPElevatedButton(),
    );
  }

  Widget _buildSearchElevatedButton() {
    return const Center(
      child: SearchByBreedElevatedButton(),
    );
  }

  Widget _buildCategoriesElevatedButton(){
    return const Center(
      child: SearchByCategoriesElevatedButton(),
    );
  }


}
