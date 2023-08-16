import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_8/domain/repositories/home_widget_repository.dart';
import 'package:task_8/domain/repositories/user_repository.dart';
import 'package:task_8/helper/constants/constants_resource.dart';

import '../../domain/entities/user_entity.dart';

part 'main_screen_bloc.freezed.dart';
part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final UserRepository localRepository;
  final UserRepository remoteRepository;
  final SharedPreferences sharedPreferences;
  final HomeWidgetRepository homeWidgetRepository;
  List<UserEntity> localUsers = [];

  MainScreenBloc({
    required this.localRepository,
    required this.remoteRepository,
    required this.sharedPreferences,
    required this.homeWidgetRepository,
  }) : super(const MainScreenState.loading()) {
    on<MainScreenEvent>((event, emit) async {
      await event.when(getData: () async {
        if (sharedPreferences
            .containsKey(ConstantsResource.USER_JSON_MODEL_KEY)) {
          await getLocalData(emit);
        } else {
          await getRemoteData(emit);
        }
      }, selectUser: (int index, List<UserEntity> users) async {
        /// update data on home widget
        await homeWidgetRepository.updateUserOfHomeScreenWidget(
            users[index], index);
        emit(MainScreenState.loaded(users, index));
      });
    });
  }

  Future<void> getLocalData(Emitter emit) async {
    final localUsers = await localRepository.getUserData();
    await localUsers.fold(
      (failure) async => emit(MainScreenState.error(failure.errorMessage)),
      (success) async {
        int index =
            sharedPreferences.getInt(ConstantsResource.SELECTED_USER_INDEX) ??
                0;

        /// update data on home widget
        await homeWidgetRepository.updateUserOfHomeScreenWidget(
            success[index], index);
        emit(MainScreenState.loaded(success, index));
      },
    );
  }

  Future<void> getRemoteData(Emitter emit) async {
    final remoteUsers = await remoteRepository.getUserData();
    await remoteUsers.fold(
        (failure) async => emit(MainScreenState.error(failure.errorMessage)),
        (success) async {
      await getLocalData(emit);
    });
  }
}
