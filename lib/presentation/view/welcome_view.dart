import 'package:flutter/material.dart';

import '../widgets/button_widgets/button_random_cat_frontpage.dart';
import '../widgets/button_widgets/button_search_frontpage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Image Search Engine')),
        body: SafeArea(
            child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                RandomCatFPElevatedButton(),
                SizedBox(
                  height: 50,
                ),
                SearchFPElevatedButton(),
              ]),
        )));
  }
}
