import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/blocs/breed_name_list_bloc.dart';

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
  void dispose() {
    super.dispose();
    BlocProvider.of<BreedNameListBloc>(context).close();
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
                  Navigator.pushNamed(
                    context,
                    '/breedResultPage',
                  );
                }),
            error: (error) => Text("failed: "+ error));
      },childCount: BlocProvider.of<BreedNameListBloc>(context).breedListLength),
    );
  }
}
