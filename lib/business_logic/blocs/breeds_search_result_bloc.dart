import 'dart:async';

import '../../data/models/breeds_search_results_model.dart';
import '../../data/repository/cat_repository.dart';
import '../../networking/api_response_status.dart';



class BreedsSearchBloc {
  late CatRepository _catRepository;
  late StreamController _breedSearchResultController;

  StreamSink get breedsSearchListSink => _breedSearchResultController.sink;
  Stream get breedsSearchListStream => _breedSearchResultController.stream;

  BreedsSearchBloc() {
    _breedSearchResultController = StreamController<ApiResponse<dynamic>>();
    _catRepository = CatRepository();
  }

  fetchSearchedBreed(String breedId) async {
    breedsSearchListSink.add(ApiResponse.loading('Fetching cat'));
    try {
      List<BreedSearchResultModel> breeds =
          await _catRepository.fetchSearchedBreeds(breedId);
      print(breeds);
      breedsSearchListSink
          .add(ApiResponse.completedImageBreedSearch(breeds));
    } catch (e) {
      breedsSearchListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  @override
  dispose() {
    _breedSearchResultController.close();
  }
}
