import 'dart:async';

import 'package:anAbundanceOfCats/data/models/breeds_model.dart';
import 'package:anAbundanceOfCats/data/repository/cat_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/breeds_search_results_model.dart';
import '../../presentation/widgets/loading_widget.dart';

part 'breed_results_bloc.freezed.dart';
part 'breed_results_event.dart';
part 'breed_results_state.dart';

class BreedResultsBloc extends Bloc<BreedResultsEvent, BreedResultsState> {

  final CatRepository _catRepository;
  final String? _breedId;

  BreedResultsBloc(this._catRepository, this._breedId) : super(const BreedResultsState.loading(loadingWidget: Loading(loadingMessage: "Loading Results",),),) {
    on<BreedResultNames>((event, emit) async{
      try {
        final _breedSearchResults = await _catRepository.fetchSearchedBreeds(_breedId);
        emit(BreedResultsState.loaded(breeds: _breedSearchResults));
      }
      catch(e){
        emit(BreedResultsState.error(message: e.toString()));
      }
    });
  }
}
