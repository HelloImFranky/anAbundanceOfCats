part of 'cat_images_by_categories_cubit.dart';

@freezed
class CatImagesByCategoriesState with _$CatImagesByCategoriesState {
  const factory CatImagesByCategoriesState.loading({required Loading loading}) = _CatByCategoriesLoading;
  const factory CatImagesByCategoriesState.loaded({required List<CatImagesByCategoryModel> catsByCategories}) = _CatByCategoriesLoaded;
}
