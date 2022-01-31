part of 'breed_name_app_bar_background_bloc.dart';

@freezed
class BreedNameAppBarBackgroundState with _$BreedNameAppBarBackgroundState {
  const factory BreedNameAppBarBackgroundState.loading({required Loading loadingWidget}) = _BreedNameAppBarBackgroundStateLoading;
  const factory BreedNameAppBarBackgroundState.loaded({required Cats cat}) = _BreedNameAppBarBackgroundStateLoaded;
  const factory BreedNameAppBarBackgroundState.error({required String message}) = _BreedNameAppBarBackgroundStateError;
}