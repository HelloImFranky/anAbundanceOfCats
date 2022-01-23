import 'dart:async';
import 'package:anAbundanceOfCats/data/repository/cat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/breeds_model.dart';
import '../../presentation/widgets/loading_widget.dart';

part 'breed_name_list_bloc.freezed.dart';
part 'breed_name_list_event.dart';
part 'breed_name_list_state.dart';

class BreedNameListBloc extends Bloc<BreedNameListEvent, BreedNameListState> {
  BreedNameListBloc() : super(const BreedNameListState.loading(loadingWidget: Loading(loadingMessage: "Loading Breeds"))) {
    on<DisplayBreedNames>((event, emit) async {
      try {
        CatRepository catRepository = CatRepository();
        final breeds = await catRepository.fetchBreeds();
        emit(BreedNameListState.loaded(breeds: breeds));
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
