part of 'single_cat_display_bloc.dart';

@freezed
class SingleCatDisplayEvent with _$SingleCatDisplayEvent {
  const factory SingleCatDisplayEvent.displayCat() = DisplaySingleCat;
  const factory SingleCatDisplayEvent.displayLoadWidget() = DisplayLoadWidget;
  const factory SingleCatDisplayEvent.displayErrorMessage() = DisplayErrorMessage;
}
