
import '../models/breeds_model.dart';
import '../models/breeds_search_results_model.dart';
import '../networking/api_helper.dart';
import '../models/cats_model.dart';

class CatRepository {

  final ApiBaseHelper _helper = ApiBaseHelper();


  Future<Cats> fetchCat() async {
    final response = await _helper.get("/v1/images/search?limit=1");
    return Cats.fromJson(response[0]);
  }

  Future<List<Breeds>> fetchBreeds() async {
    final response = await _helper.get("/v1/breeds");

    List<Breeds> listOfBreeds = <Breeds>[];

    for(var breed in response){
      listOfBreeds.add(Breeds.fromJson(breed));
    }

    return listOfBreeds;
  }

  Future<List<BreedSearchResultModel>> fetchSearchedBreeds(breedId) async {
    final response = await _helper.get("/v1/images/search?limit=5&breed_ids="+breedId);
    List<BreedSearchResultModel> listOfBreedImages = <BreedSearchResultModel>[];
    for(var breed in response){
      listOfBreedImages.add(BreedSearchResultModel.fromJson(breed));
    }
    return listOfBreedImages;
  }




}