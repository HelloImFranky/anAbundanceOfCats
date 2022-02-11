import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/models/cat_images_by_category.dart';
import '../data/repository/cat_repository.dart';
import '../presentation/widgets/loading_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_images_by_categories_cubit.freezed.dart';
part 'cat_images_by_categories_state.dart';


class CatImagesByCategoriesCubit extends Cubit<CatImagesByCategoriesState> {
  List<CatImagesByCategoryModel> catsList = [];

  CatImagesByCategoriesCubit(this._catRepository) : super(const CatImagesByCategoriesState.loading(loading: Loading(loadingMessage: "Loading Category Images",)));

  final CatRepository _catRepository;


  void getCatsByCategories(int categoriesId, int limit, int page) async {
    catsList = await _catRepository.fetchCatByCategory(categoriesId,limit,page);
  }


}
