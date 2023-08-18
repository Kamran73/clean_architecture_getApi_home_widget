import 'package:dartz/dartz.dart';
import 'package:task_8/data/data_provider/user_model_local_data_provider/user_model_local_data_provider.dart';
import 'package:task_8/domain/entities/user_entity.dart';
import 'package:task_8/domain/repositories/user_repository.dart';
import 'package:task_8/helper/failure/failure.dart';

class LocalUserRepositoryImpl implements UserRepository {
  final UserModelLocalDataProvider dataProvider;

  LocalUserRepositoryImpl({required this.dataProvider});

  @override
  Future<Either<Failure, List<UserEntity>>> getUserData() async {
    try {
      final users = await dataProvider.getData();
      return right(users.toDomain());
    } catch (exception) {
      return left(Failure(errorMessage: exception.toString()));
    }
  }
}
