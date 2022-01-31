import 'dart:async';

import 'package:anAbundanceOfCats/data/repository/cat_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/models/cats_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/widgets/loading_widget.dart';

part 'single_cat_display_bloc.freezed.dart';
part 'single_cat_display_event.dart';
part 'single_cat_display_state.dart';

class SingleCatDisplayBloc
    extends Bloc<SingleCatDisplayEvent, SingleCatDisplayState> {
  SingleCatDisplayBloc() : super(const SingleCatDisplayState.loading(loadingWidget: Loading(loadingMessage: "Fetching Cat",))) {
    on<DisplayLoadWidget>((event,emit){
      emit(const SingleCatDisplayState.loading(loadingWidget: Loading(loadingMessage: "Fetching Cat",)));
    });
    on<DisplaySingleCat>((event, emit) async {
      try {
        final cat = await CatRepository().fetchCat();
        emit(SingleCatDisplayState.loaded(cat: cat));
      } catch (e) {
        emit(SingleCatDisplayState.error(message: e.toString()));
      }
    });
  }
}
