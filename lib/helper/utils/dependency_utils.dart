import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_8/data/data_provider/user_model_remote_data_provider/user_model_remote_data_provider.dart';
import 'package:task_8/data/repositories_impl/home_widget_repository_impl.dart';
import 'package:task_8/data/repositories_impl/local_user_repository_impl.dart';
import 'package:task_8/helper/constants/constants_resource.dart';
import 'package:task_8/main.dart';

import '../../data/data_provider/user_model_local_data_provider/user_model_local_data_provider.dart';
import '../../data/repositories_impl/remote_user_repository_impl.dart';

class DependencyUtils {
  DependencyUtils._();

  static Future<void> registerAppDependencies() async {
    // initializing third party packages instance
    final sharedPreferences = await SharedPreferences.getInstance();
    final dio =
        Dio(BaseOptions(contentType: ConstantsResource.JSON_CONTENT_TYPE));
    // registering third party instances
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
    getIt.registerLazySingleton<Dio>(() => dio);

    // registering data providers
    getIt.registerSingleton(
        UserModelLocalDataProvider(sharedPreferences: getIt()));

    getIt.registerSingleton(UserModelRemoteDataProvider(getIt()));

    // registering repositories
    /// local user repo
    getIt.registerLazySingleton<LocalUserRepositoryImpl>(() =>
        LocalUserRepositoryImpl(
            dataProvider: getIt<UserModelLocalDataProvider>()));

    /// remote user repo
    getIt.registerLazySingleton<RemoteUserRepositoryImpl>(() =>
        RemoteUserRepositoryImpl(
            dataProvider: getIt<UserModelRemoteDataProvider>(),
            sharedPreferences: getIt()));

    /// home widget repo
    getIt.registerLazySingleton<HomeWidgetRepositoryImpl>(
        () => HomeWidgetRepositoryImpl(sharedPreferences: getIt()));
  }
}
