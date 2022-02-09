part of 'breed_results_bloc.dart';

@freezed
class BreedResultsEvent with _$BreedResultsEvent{
  const factory BreedResultsEvent.displayBreedNames() = BreedResultNames;
  const factory BreedResultsEvent.displayLoadWidget() = BreedResultLoadWidget;
}
