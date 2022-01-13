import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hwk10again/blocs/cats_bloc.dart';
import 'package:hwk10again/view/widgets/stream_builders/stream_builder_catsstream.dart';
import '../../button_widgets/button_search_for_breed_Images.dart';

class ShowBreedList extends StatelessWidget {
  const ShowBreedList({Key? key, required this.breed, required this.catImage})
      : super(key: key);

  final Map<String,String> breed;
  final CatsBloc catImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
          slivers: [
        SliverAppBar(
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
            background: CatStream(bloc: catImage),
          ),
        ),
        SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return SearchForBreedImagesElevatedButton(breed: breed, index: index);
              },
              childCount: breed.length,
            ))
      ]),
    );
  }
}
