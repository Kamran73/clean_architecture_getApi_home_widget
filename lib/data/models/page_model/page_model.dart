import 'package:json_annotation/json_annotation.dart';
import 'package:task_8/data/models/user_model/user_model.dart';
import 'package:task_8/domain/entities/user_entity.dart';

import '../support_model/support_model.dart';

part 'page_model.g.dart';

@JsonSerializable()
class PageModel {
  int? page;
  int? per_page;
  int? total;
  int? total_pages;
  List<UserModel>? data;
  SupportModel? support;

  PageModel(
      {this.page,
      this.per_page,
      this.total,
      this.total_pages,
      this.data,
      this.support});

  factory PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);

  Map<String, dynamic> toJson() => _$PageModelToJson(this);

  List<UserEntity> toDomain() {
    List<UserEntity> usersList = [];
    if (data != null) {
      for (var users in data!) {
        usersList.add(UserEntity(
          id: users.id ?? 0,
          email: users.email ?? "",
          firstName: users.first_name ?? "",
          lastName: users.last_name ?? "",
          profileImage: users.avatar ?? "",
        ));
      }
    }
    return usersList;
  }
}
