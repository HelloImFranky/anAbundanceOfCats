import 'dart:async';

import 'package:hwk10again/blocs/abstract_bloc.dart';

import '../networking/api_response_status.dart';
import '../models/cats_model.dart';
import '../repository/cat_repository.dart';

class CatsBloc implements Bloc{
  late CatRepository _catRepository;
  late StreamController _catController;

  StreamSink get catsListSink => _catController.sink;
  Stream get catsListStream => _catController.stream;

  CatsBloc() {
    _catController = StreamController<ApiResponse<dynamic>>();
    _catRepository = CatRepository();
    fetchCat();
  }

  fetchCat() async {
    catsListSink.add(ApiResponse.loading('Fetching cat'));
    try {
      Cats cats = await _catRepository.fetchCat();
      catsListSink.add(ApiResponse.completedCat(cats));
    } catch (e) {
      catsListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  @override
  dispose() {
    _catController.close();
  }
}
