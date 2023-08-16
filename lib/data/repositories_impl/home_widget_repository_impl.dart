import 'package:home_widget/home_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_8/domain/entities/user_entity.dart';
import 'package:task_8/domain/repositories/home_widget_repository.dart';

import '../../helper/constants/constants_resource.dart';

class HomeWidgetRepositoryImpl implements HomeWidgetRepository {
  final SharedPreferences sharedPreferences;

  HomeWidgetRepositoryImpl({required this.sharedPreferences});

  @override

  /// updates data on home screen native widget
  Future<void> updateUserOfHomeScreenWidget(UserEntity user, int index) async {
    await HomeWidget.saveWidgetData<String>(
        ConstantsResource.HOME_WIDGET_DATA_KEY,
        "${user.firstName} ${user.lastName}");
    await HomeWidget.updateWidget(
      androidName: ConstantsResource.ANDROID_WIDGET_CLASS_NAME,
    );
    await sharedPreferences.setInt(
        ConstantsResource.SELECTED_USER_INDEX, index);
  }
}
