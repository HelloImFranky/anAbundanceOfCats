import 'package:anAbundanceOfCats/business_logic/blocs/breed_results_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowBreedResults extends StatefulWidget {
  const ShowBreedResults({Key? key}) : super(key: key);
  @override
  _ShowBreedResultsState createState() => _ShowBreedResultsState();
}

class _ShowBreedResultsState extends State<ShowBreedResults> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<BreedResultsBloc>(context)
        .add(const BreedResultsEvent.displayBreedNames());
  }

  @override
  Widget build(BuildContext context) {

    //TODO: find a way to replace Breed model with another model to give new breed description
    final state = context.watch<BreedResultsBloc>().state;
    return Container();
    //
    //   Scaffold(
    //   body: state.when(
    //     loading: (loading) => loading,
    //     error: (error) => Text(error),
    //     loaded: (loaded) => Column(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(20.0),
    //           child: Text(
    //             loaded[0].breeds[0].description.toString(),
    //             textAlign: TextAlign.center,
    //             style: const TextStyle(fontSize: 20.0),
    //           ),
    //         ),
    //         ElevatedButton(
    //           onPressed: () async {
    //             String url = loaded[0].breeds[0].wikipediaUrl.toString();
    //             if (await canLaunch(url)) {
    //               await launch(url);
    //             } else {
    //               throw 'Could not Launch $url';
    //             }
    //           },
    //           child: const Text('More information'),
    //         ),
    //         Expanded(
    //           child: ListView.builder(
    //               itemCount: loaded.length,
    //               itemBuilder: (BuildContext context, int index) {
    //                 return Column(
    //                   children: [
    //                     const SizedBox(
    //                       height: 20,
    //                     ),
    //                     Image.network(loaded[index].url.toString()),
    //                   ],
    //                 );
    //               }),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
