import 'package:flutter/material.dart';

import '../../../business_logic/blocs/cats_bloc.dart';
import '../../../networking/api_response_status.dart';
import '../button_widgets/button_more_cats.dart';
import '../loading_widget.dart';
import 'stream_widgets/show_cat.dart';

class CatStream extends StatefulWidget {
  const CatStream({Key? key}) : super(key: key);

  @override
  _CatStreamState createState() => _CatStreamState();
}

class _CatStreamState extends State<CatStream> {
  late CatsBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = CatsBloc();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 50),
        StreamBuilder<dynamic>(
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
        ),
        MoreCatsElevatedButton(catBloc: bloc),
      ],
    );
  }
}
