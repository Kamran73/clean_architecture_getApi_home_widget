import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../helper/constants/constants_resource.dart';
import '../../../helper/constants/strings_resource.dart';
import '../../models/user_json_model/user_json_model.dart';

class UserModelLocalDataProvider {
  final SharedPreferences sharedPreferences;

  UserModelLocalDataProvider({required this.sharedPreferences});

  Future<UserJsonModel> getData() async {
    try {
      final users =
          sharedPreferences.getString(ConstantsResource.USER_JSON_MODEL_KEY);
      if (users != null) {
        return UserJsonModel.fromJson(jsonDecode(users));
      } else {
        throw StringsResource.NO_DATA_AVAILABLE;
      }
    } catch (exception) {
      rethrow;
    }
  }
}
