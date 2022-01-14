import 'package:anAbundanceOfCats/view/welcome_view.dart';
import 'package:flutter/material.dart';
import 'view/page_allbreeds_choice_page.dart';
import 'view/page_breed_choice_image_results_.dart';
import 'view/page_onerandomcat_result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/searchPage': (context) => const SearchPage(),
        '/resultPage': (context) => const ResultPage(),
        '/breedResultPage': (context) => const BreedResultPage(),
      },
      theme: ThemeData.dark(),
    );
  }
}



