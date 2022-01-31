import 'package:flutter/material.dart';

import '../widgets/sliver_widgets/sliver_breedname_AppBar.dart';
import '../widgets/sliver_widgets/sliver_breedname_choice.dart';


class BreedNameSearchPage extends StatelessWidget {
  const BreedNameSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverGridBreedNameAppBar(),
              SliverGridBreedNameChoice(),
            ]));
  }
}
