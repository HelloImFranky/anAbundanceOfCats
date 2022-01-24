import 'package:anAbundanceOfCats/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

import 'presentation/view/welcome_view.dart';
import 'presentation/view/page_allbreeds_choice_page.dart';
import 'presentation/view/page_breed_choice_image_results_.dart';
import 'presentation/view/page_onerandomcat_result.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: _appRouter.onGenerateRoute,
      theme: ThemeData.dark(),
    );
  }
}



