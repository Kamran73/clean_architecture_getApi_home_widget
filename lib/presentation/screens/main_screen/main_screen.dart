import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_8/bloc/main_screen_bloc/main_screen_bloc.dart';
import 'package:task_8/domain/entities/user_entity.dart';
import 'package:task_8/presentation/widgets/error_state.dart';

import '../../../helper/constants/dimensions_resource.dart';
import '../../../helper/constants/strings_resource.dart';
import '../../widgets/loading_state.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsResource.MAIN_SCREEN_TEXT),
        centerTitle: true,
      ),
      body: BlocBuilder<MainScreenBloc, MainScreenState>(
        builder: (BuildContext context, state) {
          return state.when(
              loading: () => const LoadingState(),
              error: (errorMessage) => ErrorState(errorMessage: errorMessage),
              loaded: (users, selectedUserIndex) {
                return DataLoadedWidget(
                  selectedUserIndex: selectedUserIndex,
                  users: users,
                );
              });
        },
      ),
    );
  }
}

class DataLoadedWidget extends StatelessWidget {
  const DataLoadedWidget(
      {super.key, required this.users, required this.selectedUserIndex});

  final List<UserEntity> users;
  final int selectedUserIndex;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () async {
            context
                .read<MainScreenBloc>()
                .add(MainScreenEvent.selectUser(index, users));
          },
          trailing: selectedUserIndex == index
              ? const Icon(
                  Icons.check,
                  color: Colors.green,
                )
              : null,
          leading: CircleAvatar(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  DimensionsResource.PROFILE_IMAGE_RADIUS),
              child: CachedNetworkImage(
                imageUrl: users[index].profileImage,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          title: Text("${users[index].firstName} ${users[index].lastName}"),
        );
      },
      itemCount: users.length,
    );
  }
}
