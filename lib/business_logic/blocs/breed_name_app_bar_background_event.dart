part of 'breed_name_app_bar_background_bloc.dart';

@freezed
class BreedNameAppBarBackgroundEvent with _$BreedNameAppBarBackgroundEvent {
  const factory BreedNameAppBarBackgroundEvent.displayCat() = DisplayBreedSingleCat;

  const factory BreedNameAppBarBackgroundEvent.displayLoadWidget() = DisplayBreedLoadWidget;

  const factory BreedNameAppBarBackgroundEvent.displayErrorMessage() = DisplayBreedErrorMessage;
}