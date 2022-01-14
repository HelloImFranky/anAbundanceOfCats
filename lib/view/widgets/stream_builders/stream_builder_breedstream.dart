import 'package:anAbundanceOfCats/view/widgets/loading_widget.dart';
import 'package:anAbundanceOfCats/view/widgets/stream_builders/stream_widgets/show_breed_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../blocs/breeds_name_bloc.dart';
import '../../../blocs/cats_bloc.dart';
import '../../../networking/api_response_status.dart';

class BreedStream extends StatefulWidget {
   const BreedStream({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BreedStream();
}

class _BreedStream extends State<BreedStream> {
  late BreedsNameBloc _bloc;
  late CatsBloc _flexibleSpaceCatImageBloc;

  @override
  void initState() {
    super.initState();
    _bloc = BreedsNameBloc();
    _flexibleSpaceCatImageBloc = CatsBloc();
  }

  @override
  Widget build(BuildContext context) {
      return StreamBuilder<dynamic>(
        stream: _bloc.breedsListStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            switch (snapshot.data.status) {
              case Status.loading:
                return Loading(loadingMessage: snapshot.data.message);
              case Status.completed:
                return ShowBreedList(
                  breed: snapshot.data.catBreedData,
                  catImage: _flexibleSpaceCatImageBloc,
                );
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
