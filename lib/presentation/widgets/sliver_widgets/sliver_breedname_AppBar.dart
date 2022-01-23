import 'package:flutter/material.dart';

import '../../../networking/api_response_status.dart';
import '../loading_widget.dart';

class SliverGridBreedNameAppBar extends StatefulWidget {
  const SliverGridBreedNameAppBar({Key? key}) : super(key: key);

  @override
  _SliverGridBreedNameAppBar createState() => _SliverGridBreedNameAppBar();
}

class _SliverGridBreedNameAppBar extends State<SliverGridBreedNameAppBar> {
  // late CatsBloc _flexibleSpaceCatImageBloc;

  @override
  void initState() {
    super.initState();
    // _flexibleSpaceCatImageBloc = CatsBloc();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        stretch: true,
        onStretchTrigger: () {
          // Function callback for stretch
          return Future<void>.value();
        },
        excludeHeaderSemantics: true,
        centerTitle: true,
        title: const Text('All Breeds'),
        expandedHeight: 300.0,
        flexibleSpace: FlexibleSpaceBar(
          stretchModes: const <StretchMode>[
            StretchMode.zoomBackground,
            StretchMode.blurBackground,
            StretchMode.fadeTitle,
          ],
          background: Container(),
        ));
  }
}
