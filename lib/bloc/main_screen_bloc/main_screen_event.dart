part of 'main_screen_bloc.dart';

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.getData() = _GetData;

  const factory MainScreenEvent.selectUser(int index, List<UserEntity> users) =
      _SelectUser;
}
