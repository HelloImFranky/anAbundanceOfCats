import 'dart:async';

import 'package:anAbundanceOfCats/data/repository/cat_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/cats_model.dart';
import '../../presentation/widgets/loading_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed_name_app_bar_background_bloc.freezed.dart';
part 'breed_name_app_bar_background_event.dart';
part 'breed_name_app_bar_background_state.dart';

class BreedNameAppBarBackgroundBloc extends Bloc<BreedNameAppBarBackgroundEvent,
    BreedNameAppBarBackgroundState> {
  BreedNameAppBarBackgroundBloc()
      : super(const BreedNameAppBarBackgroundState.loading(
            loadingWidget: Loading(
          loadingMessage: "Loading Random Breed Image",
        ))) {
    on<DisplayBreedSingleCat>((event, emit) async {
      final cat = await CatRepository().fetchCat();
      emit(BreedNameAppBarBackgroundState.loaded(cat: cat));
    });
    on<DisplayBreedLoadWidget>((event, emit) {
      const BreedNameAppBarBackgroundState.loading(
          loadingWidget: Loading(
        loadingMessage: "Loading Random Breed Image",
      ));
    });
  }
}
