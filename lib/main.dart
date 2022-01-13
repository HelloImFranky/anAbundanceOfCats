import 'package:flutter/material.dart';
import 'view/page_allbreeds_choice_page.dart';
import 'view/page_breed_choice_image_results_.dart';
import 'view/page_onerandomcat_result.dart';
import 'view/widgets/button_widgets/button_random_cat_frontpage.dart';
import 'view/widgets/button_widgets/button_search_frontpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const WelcomePage(),
      '/searchPage': (context) => const SearchPage(),
      '/resultPage': (context) => const ResultPage(),
      '/breedResultPage': (context) => const BreedResultPage(),
    },
    theme: ThemeData.dark(),
  ));
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  _WelcomePage createState() => _WelcomePage();
}

class _WelcomePage extends State<WelcomePage> {
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
                SizedBox(height: 50,),
                SearchFPElevatedButton(),
              ]),
        )));
  }
}
