import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../helper/constants/constants_resource.dart';
import '../../../helper/constants/strings_resource.dart';
import '../../models/page_model/page_model.dart';

class UserModelLocalDataProvider {
  final SharedPreferences sharedPreferences;

  UserModelLocalDataProvider({required this.sharedPreferences});

  Future<PageModel> getData() async {
    try {
      final users =
          sharedPreferences.getString(ConstantsResource.USER_JSON_MODEL_KEY);
      if (users != null) {
        return PageModel.fromJson(jsonDecode(users));
      } else {
        throw StringsResource.NO_DATA_AVAILABLE;
      }
    } catch (exception) {
      rethrow;
    }
  }
}
