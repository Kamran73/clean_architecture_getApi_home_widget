import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    required int id,
    required String email,
    required String firstName,
    required String lastName,
    required String profileImage,
  }) = _UserEntity;
}
