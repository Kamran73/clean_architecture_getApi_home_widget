part of 'main_screen_bloc.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState.loading() = _Loading;

  const factory MainScreenState.error(String errorMessage) = _Error;

  const factory MainScreenState.loaded(
      List<UserEntity> users, int selectedUserIndex) = _Loaded;
}
