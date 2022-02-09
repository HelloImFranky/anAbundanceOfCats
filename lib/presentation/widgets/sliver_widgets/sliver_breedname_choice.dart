import 'package:anAbundanceOfCats/business_logic/blocs/breed_results_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/blocs/breed_name_list_bloc.dart';
import '../../../data/repository/cat_repository.dart';
import '../../view/page_show_breed_results.dart';

class SliverGridBreedNameChoice extends StatefulWidget {
  const SliverGridBreedNameChoice({Key? key}) : super(key: key);

  @override
  _SliverGridBreedNameChoiceState createState() =>
      _SliverGridBreedNameChoiceState();
}

class _SliverGridBreedNameChoiceState extends State<SliverGridBreedNameChoice> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<BreedNameListBloc>(context)
        .add(const BreedNameListEvent.displayBreedNames());
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<BreedNameListBloc>().state;
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      delegate: SliverChildBuilderDelegate((context, index) {
        return state.when(
            loading: (loading) => loading,
            loaded: (loaded) => ElevatedButton(
                child: Text(
                  loaded.keys.elementAt(index),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(primary: Colors.grey[500]),
                onPressed: () {
                  String breedId = loaded.values.elementAt(index);
                  BreedResultsBloc resultBloc =
                      BreedResultsBloc(CatRepository(), breedId);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => BlocProvider(
                        create: (create) => resultBloc,
                        child: const ShowBreedResults(),
                      ),
                    ),
                  );
                }),
            error: (error) => Text("failed: " + error));
      },
          childCount:
              BlocProvider.of<BreedNameListBloc>(context).breedListLength),
    );
  }
}
