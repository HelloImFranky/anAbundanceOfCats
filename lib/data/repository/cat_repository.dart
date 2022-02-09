import 'dart:developer';

import '../models/breeds_model.dart';
import '../models/breeds_search_results_model.dart';
import '../models/cat_categories_model.dart';
import '../models/cats_model.dart';
import '../providers/cat_provider.dart';

class CatRepository {

  final CatProvider _catProvider = CatProvider();


  Future<Cats> fetchCat() async {
    final response = await _catProvider.fetchCat(1);
    final Cats cat = Cats.fromJson(response[0]);
    return cat;
  }

  Future<List<Breeds>> fetchBreeds() async {
    final response = await _catProvider.fetchBreeds();
    List<Breeds> listOfBreeds = <Breeds>[];
    for(var breed in response){
      listOfBreeds.add(Breeds.fromJson(breed));
    }
    return listOfBreeds;
  }

  Future<List<BreedSearchResultModel>> fetchSearchedBreeds(breedId) async {
    final response = await _catProvider.fetchSearchedBreeds(breedId);
    List<BreedSearchResultModel> listOfBreedImages = <BreedSearchResultModel>[];
    for(var breed in response){
      listOfBreedImages.add(BreedSearchResultModel.fromJson(breed));
    }
    return listOfBreedImages;
  }

  Future<List<CatCategoriesModel>> fetchCategories() async {
    final response = await _catProvider.fetchCategories();
    List<CatCategoriesModel> listOfBreedImages = <CatCategoriesModel>[];
    for(var categories in response){
      listOfBreedImages.add(CatCategoriesModel.fromJson(categories));
    }
    return listOfBreedImages;
  }




}