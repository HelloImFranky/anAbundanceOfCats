part of 'breed_name_list_bloc.dart';

@freezed
class BreedNameListEvent with _$BreedNameListEvent {
  const factory BreedNameListEvent.displayBreedNames() = DisplayBreedNames;
  const factory BreedNameListEvent.displayLoadWidget() = DisplayLoadWidget;
}
