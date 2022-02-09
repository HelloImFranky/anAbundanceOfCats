import 'package:anAbundanceOfCats/business_logic/blocs/breed_name_app_bar_background_bloc.dart';
import 'package:anAbundanceOfCats/business_logic/blocs/single_cat_display_bloc.dart';
import 'package:anAbundanceOfCats/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliverGridBreedNameAppBar extends StatefulWidget {
  const SliverGridBreedNameAppBar({Key? key}) : super(key: key);

  @override
  _SliverGridBreedNameAppBar createState() => _SliverGridBreedNameAppBar();
}

class _SliverGridBreedNameAppBar extends State<SliverGridBreedNameAppBar> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<BreedNameAppBarBackgroundBloc>(context)
        .add(const BreedNameAppBarBackgroundEvent.displayCat());
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<BreedNameAppBarBackgroundBloc>().state;
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
          background: state.when(
            loading: (_) => const Loading(loadingMessage: "Loading Cat"),
            loaded: (loaded) => Image.network(
              loaded.url.toString(),
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                      color: Colors.lightGreenAccent,
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null),
                );
              },
            ),
            error: (error) => Text(error),
          )),
    );
  }
}
