import '../networking/api_helper.dart';

class CatProvider {
  final ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<dynamic>> fetchCat([limit = 1]) async {
    final response = await _helper.get("/v1/images/search?" + limit.toString());
    return response;
  }

  Future<List<dynamic>> fetchBreeds() async {
    final response = await _helper.get("/v1/breeds");
    return response;
  }

  Future<List<dynamic>> fetchSearchedBreeds(breedId) async {
    final response =
        await _helper.get("/v1/images/search?limit=5&breed_ids=" + breedId);
    return response;
  }

  /* TODO: Create new providers that will fetch cats in different ways the key is to
      provide the user with more features so they can find cats in any way they wish
   */
}
