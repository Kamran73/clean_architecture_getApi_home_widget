import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_8/data/data_provider/user_model_remote_data_provider/user_model_remote_data_provider.dart';
import 'package:task_8/domain/entities/user_entity.dart';
import 'package:task_8/domain/repositories/user_repository.dart';
import 'package:task_8/helper/constants/strings_resource.dart';
import 'package:task_8/helper/failure/failure.dart';

import '../../helper/constants/constants_resource.dart';

class RemoteUserRepositoryImpl implements UserRepository {
  final UserModelRemoteDataProvider dataProvider;
  final SharedPreferences sharedPreferences;

  const RemoteUserRepositoryImpl(
      {required this.dataProvider, required this.sharedPreferences});

  @override
  Future<Either<Failure, List<UserEntity>>> getUserData() async {
    try {
      final users = await dataProvider.getUser();

      await sharedPreferences.setString(
          ConstantsResource.USER_JSON_MODEL_KEY, jsonEncode(users.toJson()));

      return right(users.toDomain());
    } on DioException catch (dioException) {
      return left(Failure(
          errorMessage:
              dioException.message ?? StringsResource.UNKNOWN_ERROR_OCCURRED));
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }
}
