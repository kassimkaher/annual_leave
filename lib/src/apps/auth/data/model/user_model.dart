import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "Name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "birthday") DateTime? birthday,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "gander") String? gander,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
