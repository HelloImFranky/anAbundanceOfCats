import 'package:anAbundanceOfCats/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/blocs/breed_name_list_bloc.dart';
import '../../../data/models/breeds_model.dart';

class SliverGridBreedNameChoice extends StatelessWidget {
  const SliverGridBreedNameChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<BreedNameListBloc>().state;
    return state.when(
      loading: (loadingWidget) =>
          _buildLoadingSliverGrid(context, loadingWidget, null),
      loaded: (breeds) => _buildLoadingSliverGrid(context, null, breeds),
      error: (message) => Text(message),
    );
  }

  Widget _buildLoadingSliverGrid(BuildContext context,
      [Loading? loadWidget, Map<String, String>? breeds]) {
    return SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        delegate: breeds == null
            ? SliverChildBuilderDelegate(
                (context, index) {
                  return const Loading(loadingMessage: 'Loading Names');
                },
                childCount: 2,
              )
            : SliverChildBuilderDelegate(
                (context, index) {
                  return _buildElevatedButton(context, index, breeds);
                },
                childCount: 2,
              ));
  }

  Widget _buildElevatedButton(context, index, Map<String, String> breeds) {
    return ElevatedButton(
      child: Text(
        breeds.keys.elementAt(index),
        textAlign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(primary: Colors.grey[500]),
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/breedResultPage',
        );
      },
    );
  }
  // return
}
