import 'package:anAbundanceOfCats/business_logic/blocs/breeds_name_bloc.dart';
import 'package:flutter/material.dart';

import '../../../data/models/user_breed_choice_model.dart';


class SliverGridBreedNameChoice extends StatelessWidget {
  const SliverGridBreedNameChoice({Key? key, required this.breedName}) : super(key: key);
  final Map<String,String> breedName;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        delegate: SliverChildBuilderDelegate(
                (context, index) {
              return ElevatedButton(
                child: Text(
                  breedName.keys.elementAt(index),
                  textAlign: TextAlign.center,
                ),
                style: ElevatedButton.styleFrom(primary: Colors.grey[500]),
                onPressed: () {
                  Navigator.pushNamed(context, '/breedResultPage',
                      arguments: UserBreedChoiceCode.codeConstruct(
                        breedName.values.elementAt(index),
                        breedName.keys.elementAt(index),
                      ));
                },
              );
            },
            childCount: breedName.length
        ));
  }
}