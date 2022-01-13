import 'package:anAbundanceOfCats/view/widgets/stream_builders/stream_widgets/loading.dart';
import 'package:anAbundanceOfCats/view/widgets/stream_builders/stream_widgets/show_breed_results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../blocs/breeds_search_result_bloc.dart';
import '../../../networking/api_response_status.dart';

class BreedChoiceImageStream extends StatelessWidget {
   const BreedChoiceImageStream({Key? key,required this.searchBloc}) : super(key: key);
   final BreedsSearchBloc searchBloc;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
      stream: searchBloc.breedsSearchListStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          switch (snapshot.data.status) {
            case Status.loading:
              return Loading(loadingMessage: snapshot.data.message);
            case Status.completed:
              return ShowBreedResults(breed: snapshot.data.breedSearchData);
            case Status.error:
              print(snapshot.data.message);
              return Text(snapshot.data.message);
          }
        }
        return Container();
      },
    );
    }
  }
