part of 'breed_name_list_bloc.dart';

@freezed
class BreedNameListState with _$BreedNameListState {
  const factory BreedNameListState.loading({required Loading loadingWidget}) = _BreedNameListLoading;
  const factory BreedNameListState.loaded({required List<Breeds> breeds}) = _BreedNameListLoaded;
  const factory BreedNameListState.error({required String message}) = _BreedNameListError;
}
