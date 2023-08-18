import 'package:flutter/cupertino.dart';
import 'package:task_8/helper/utils/dependency_utils.dart';

class InitUtils {
  InitUtils._();

  static Future<void> appInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    await DependencyUtils.registerAppDependencies();
  }
}
