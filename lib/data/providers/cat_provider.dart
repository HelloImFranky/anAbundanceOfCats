import 'dart:developer';

import '../../networking/api_helper.dart';

class CatProvider {
  final ApiBaseHelper _helper = ApiBaseHelper();

  /*
  fetches a default amount of 1 (optional) cat image(s)
   */

  Future<List<dynamic>> fetchCat([limit = 1]) async {
    final response = await _helper.get("/v1/images/search?" + limit.toString());
    return response;
  }

  /*
  The futures below will fetch all text needed for widgets from API
   */

  Future<List<dynamic>> fetchBreeds() async {
    final response = await _helper.get("/v1/breeds");
    return response;
  }

  Future<List<dynamic>> fetchCategories() async {
    final response = await _helper.get("/v1/categories");
    return response;
  }

  /*
  The parameterized futures below will fetch cat images
   */

  Future<List<dynamic>> fetchSearchedBreeds(String breedId) async {
    final response =
        await _helper.get("/v1/images/search?limit=5&breed_ids=" + breedId);
    return response;
  }

  /*
  The parameterized futures below will fetch cat images by category
   */

  Future<List<dynamic>> fetchCatsByCategory(int categoryId,
      [limit = 3, page = 1]) async {
    final response = await _helper.get("/v1/images/search?limit=" +
        limit.toString() +
        "&category_ids=" +
        categoryId.toString() +
        "&page=" +
        page.toString());
    return response;
  }

  /* TODO: Create new providers that will fetch cats in different ways the key is to
      provide the user with more features so they can find cats in any way they wish
   */
}
