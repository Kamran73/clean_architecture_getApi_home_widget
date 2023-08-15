import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:task_8/bloc/main_screen_bloc/main_screen_bloc.dart';
import 'package:task_8/data/repositories_impl/local_user_repository_impl.dart';
import 'package:task_8/data/repositories_impl/remote_user_repository_impl.dart';
import 'package:task_8/helper/utils/init_utils.dart';
import 'package:task_8/presentation/screens/main_screen/main_screen.dart';

import 'helper/constants/themes_resource.dart';

GetIt getIt = GetIt.instance;

Future<void> main() async {
  await InitUtils.appInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainScreenBloc(
        localRepository: getIt<LocalUserRepositoryImpl>(),
        remoteRepository: getIt<RemoteUserRepositoryImpl>(),
        sharedPreferences: getIt(),
      )..add(const MainScreenEvent.getData()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task 8',
        theme: ThemesResource.themeData,
        home: const MainScreen(),
      ),
    );
  }
}
