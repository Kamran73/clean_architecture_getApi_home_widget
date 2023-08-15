import 'package:dartz/dartz.dart';
import 'package:task_8/domain/entities/user_entity.dart';

import '../../helper/failure/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UserEntity>>> getUserData();
}
