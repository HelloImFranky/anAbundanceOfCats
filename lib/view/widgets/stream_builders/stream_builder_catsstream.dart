import 'package:anAbundanceOfCats/view/widgets/loading_widget.dart';
import 'package:anAbundanceOfCats/view/widgets/stream_builders/stream_widgets/show_cat.dart';
import 'package:flutter/cupertino.dart';

import '../../../blocs/cats_bloc.dart';
import '../../../networking/api_response_status.dart';


class CatStream extends StatelessWidget {
  const CatStream({Key? key, required this.bloc}) : super(key: key);
  final CatsBloc bloc;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
      stream: bloc.catsListStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          switch (snapshot.data.status) {
            case Status.loading:
              return Loading(loadingMessage: snapshot.data.message);
            case Status.completed:
              return ShowCat(cat: snapshot.data.data);
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
