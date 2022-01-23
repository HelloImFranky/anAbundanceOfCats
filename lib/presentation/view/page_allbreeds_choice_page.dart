import 'package:anAbundanceOfCats/business_logic/blocs/breeds_name_bloc.dart';
import 'package:flutter/material.dart';

import '../widgets/sliver_widgets/sliver_breedname_AppBar.dart';
import '../widgets/sliver_widgets/sliver_breedname_choice.dart';

class BreedNameSearchPage extends StatefulWidget {
  const BreedNameSearchPage({Key? key}) : super(key: key);

  @override
  _BreedNameSearchPageState createState() => _BreedNameSearchPageState();
}

class _BreedNameSearchPageState extends State<BreedNameSearchPage> {
  late BreedsNameBloc _breedNameBloc;

  @override
  void initState() {
    super.initState();
    _breedNameBloc = BreedsNameBloc();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              const SliverGridBreedNameAppBar(),
              SliverGridBreedNameChoice(breedName: _breedNameBloc.breedInfoList),
            ]));
  }

  @override
  void dispose() {
    super.dispose();
    _breedNameBloc.dispose();
  }
}
