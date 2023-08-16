import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  int? id;
  String? email;
  String? first_name;
  String? last_name;
  String? avatar;

  UserModel(
      {this.id, this.email, this.first_name, this.last_name, this.avatar});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
