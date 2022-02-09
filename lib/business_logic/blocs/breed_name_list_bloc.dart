import 'dart:async';
import 'package:anAbundanceOfCats/data/repository/cat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../presentation/widgets/loading_widget.dart';

part 'breed_name_list_bloc.freezed.dart';
part 'breed_name_list_event.dart';
part 'breed_name_list_state.dart';

class BreedNameListBloc extends Bloc<BreedNameListEvent, BreedNameListState> {
  int breedListLength = 0;
  BreedNameListBloc() : super(const BreedNameListState.loading(loadingWidget: Loading(loadingMessage: "Loading Breeds"))) {
    final Map<String, String> _breedInfoList = <String,String>{};
    CatRepository catRepository = CatRepository();

    on<DisplayBreedNames>((event, emit) async {
      try {
        final breeds = await catRepository.fetchBreeds();
        for (var element in breeds) {
          _breedInfoList.putIfAbsent(element.name, () => element.id);
        }
        breedListLength = _breedInfoList.length;
        emit(BreedNameListState.loaded(breeds: _breedInfoList));
      }
      catch(e){
        emit(BreedNameListState.error(message: e.toString()));
      }
    });
    on<DisplayLoadWidget>((event, emit){
      emit(const BreedNameListState.loading(loadingWidget: Loading(loadingMessage: "Loading Breeds")));
    });
  }
}
