import 'dart:async';

import 'package:anAbundanceOfCats/data/models/cat_categories_model.dart';
import 'package:anAbundanceOfCats/data/repository/cat_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../presentation/widgets/loading_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_categories_cubit.freezed.dart';
part 'cat_categories_state.dart';

class CatCategoriesCubit extends Cubit<CatCategoriesState> {

  List<CatCategoriesModel> categoriesList = [];

  CatCategoriesCubit(this._catRepository)
      : super(const CatCategoriesState.loading(
            loading: Loading(loadingMessage: "Loading Categories")));

  final CatRepository _catRepository;

  void getCategories() async {
    categoriesList = await _catRepository.fetchCategories();

    emit(CatCategoriesState.loaded(
      categories: categoriesList,
    ));
  }
}
