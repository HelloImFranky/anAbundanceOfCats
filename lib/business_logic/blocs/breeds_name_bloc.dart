import 'dart:async';

import '../../data/models/breeds_model.dart';
import '../../data/repository/cat_repository.dart';
import '../../networking/api_response_status.dart';

class BreedsNameBloc {
  late CatRepository _catRepository;
  late StreamController _breedController;

  StreamSink get breedsListSink => _breedController.sink;
  Stream get breedsListStream => _breedController.stream;

  final Map<String, String> _breedInfoList = <String,String>{};

  BreedsNameBloc() {
    _breedController = StreamController<ApiResponse<dynamic>>();
    _catRepository = CatRepository();
    fetchBreed();
  }

  fetchBreed() async {
    breedsListSink.add(ApiResponse.loading('Fetching cat'));
    try {
      List<Breeds> breeds = await _catRepository.fetchBreeds();
      for (var element in breeds) {
        _breedInfoList.putIfAbsent(element.name,()=>element.id);
      }
      print(_breedInfoList);
      breedsListSink.add(ApiResponse.completedBreed(_breedInfoList));
    } catch (e) {
      breedsListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }


  Map<String, String> get breedInfoList => _breedInfoList;

  @override
  dispose() {
    _breedController.close();
  }
}
