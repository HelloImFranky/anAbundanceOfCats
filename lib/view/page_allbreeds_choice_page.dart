import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/stream_builders/stream_builder_breedstream.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: const [
            Expanded(child: BreedStream()),
          ]),
        );
  }
}
