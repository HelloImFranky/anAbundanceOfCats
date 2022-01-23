import 'package:flutter/material.dart';

import '../widgets/button_widgets/button_random_cat_frontpage.dart';
import '../widgets/button_widgets/button_search_frontpage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Search Engine')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildRandomCatElevatedButton(),
          const SizedBox(
            height: 50,
          ),
          _buildSearchElevatedButton(),
        ],
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
}
