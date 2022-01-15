import 'package:flutter/material.dart';

import '../../business_logic/blocs/breeds_search_result_bloc.dart';
import '../../data/models/user_breed_choice_model.dart';
import '../widgets/stream_builders/stream_builder_breedchoiceimagestream.dart';

class BreedResultPage extends StatefulWidget {
  const BreedResultPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _BreedResultPageState();
}

class _BreedResultPageState extends State<BreedResultPage> {
  late BreedsSearchBloc searchBloc;
  late String catName;

  @override
  void initState() {
    super.initState();
    searchBloc = BreedsSearchBloc();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      final arguments =
      ModalRoute.of(context)?.settings.arguments as UserBreedChoiceCode;
      searchBloc.fetchSearchedBreed(arguments.breedCode);
      catName = arguments.breedName;
    });
    return Scaffold(
      appBar: AppBar(title: Text(catName),),
        body: Column(
      children: [
        Expanded(
            child: BreedChoiceImageStream(
                searchBloc: searchBloc)),
      ],
    ));
  }
}
