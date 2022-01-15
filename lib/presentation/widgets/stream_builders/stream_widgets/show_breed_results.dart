import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/models/breeds_search_results_model.dart';



class ShowBreedResults extends StatelessWidget {
  const ShowBreedResults({Key? key, required this.breed}) : super(key: key);

  final List<BreedSearchResultModel> breed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(breed[0].breeds[0].description.toString(),textAlign: TextAlign.center,style: const TextStyle(fontSize: 20.0),),
            ),
            ElevatedButton(onPressed: () async {
              String url = breed[0].breeds[0].wikipediaUrl.toString();
              if(await canLaunch(url)){
                await launch(url);
              }else{
                throw 'Could not Launch $url';
              }
            },child: const Text('More information'),),
            Expanded(
              child: ListView.builder(
                  itemCount: breed.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      Column(
                        children: [
                          const SizedBox(height: 20,),
                          Image.network(
                            breed[index].url.toString()),
                        ],
                      );
                  }),
            ),
          ],
        ));
  }
}
