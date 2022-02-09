part of 'breed_results_bloc.dart';

@freezed
class BreedResultsState with _$BreedResultsState{
  const factory BreedResultsState.loading({required Loading loadingWidget}) = _BreedResultsLoading;
  const factory BreedResultsState.loaded({required List<BreedSearchResultModel> breeds}) = _BreedResultsLoaded;
  const factory BreedResultsState.error({required String message}) = _BreedResultsError;
}

