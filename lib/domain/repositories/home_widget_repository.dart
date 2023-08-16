import 'package:task_8/domain/entities/user_entity.dart';

abstract class HomeWidgetRepository {
  Future<void> updateUserOfHomeScreenWidget(UserEntity user, int index);
}
