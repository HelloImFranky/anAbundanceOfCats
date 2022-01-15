import 'package:flutter/material.dart';

import '../widgets/stream_builders/stream_builder_breedstream.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Expanded(child: BreedStream()),
      ]),
    );
  }
}
