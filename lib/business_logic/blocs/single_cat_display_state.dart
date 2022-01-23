part of 'single_cat_display_bloc.dart';

@freezed
class SingleCatDisplayState with _$SingleCatDisplayState {
  const factory SingleCatDisplayState.loading({required Loading loadingWidget}) = _SingleCatDisplayLoading;
  const factory SingleCatDisplayState.loaded({required Cats cat}) = _SingleCatDisplayLoaded;
  const factory SingleCatDisplayState.error({required String message}) = _SingleCatDisplayError;
}
