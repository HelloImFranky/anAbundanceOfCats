part of 'cat_categories_cubit.dart';

@freezed
class CatCategoriesState with _$CatCategoriesState {
  const factory CatCategoriesState.loading({required Loading loading}) = _CatCategoriesLoading;
  const factory CatCategoriesState.loaded({required List<CatCategoriesModel> categories}) = _CatCategoriesLoaded;
}
