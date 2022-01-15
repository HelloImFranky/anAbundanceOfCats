import 'dart:async';

import '../../data/models/breeds_model.dart';
import '../../data/repository/cat_repository.dart';
import '../../networking/api_response_status.dart';
import 'abstract_bloc.dart';

class BreedsNameBloc implements Bloc {
  late CatRepository _catRepository;
  late StreamController _breedController;

  StreamSink get breedsListSink => _breedController.sink;
  Stream get breedsListStream => _breedController.stream;

  BreedsNameBloc() {
    _breedController = StreamController<ApiResponse<dynamic>>();
    _catRepository = CatRepository();
    fetchBreed();
  }

  fetchBreed() async {
    breedsListSink.add(ApiResponse.loading('Fetching cat'));
    try {
      List<Breeds> breeds = await _catRepository.fetchBreeds();
      Map<String, String> breedInfoList = <String,String>{};
      for (var element in breeds) {
        breedInfoList.putIfAbsent(element.name,()=>element.id);
      }
      print(breedInfoList);
      breedsListSink.add(ApiResponse.completedBreed(breedInfoList));
    } catch (e) {
      breedsListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  @override
  dispose() {
    _breedController.close();
  }
}
