import 'package:anAbundanceOfCats/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

import 'presentation/view/welcome_view.dart';
import 'presentation/view/page_allbreeds_choice_page.dart';
import 'presentation/view/page_breed_choice_image_results_.dart';
import 'presentation/view/page_onerandomcat_result.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {

  final AppRouter appRouter;

  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: appRouter.onGenerateRoute,
      theme: ThemeData.dark(),
    );
  }
}



