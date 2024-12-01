import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

UserEntity userEntityFromJson(String str) =>
    UserEntity.fromJson(json.decode(str));

String userEntityToJson(UserEntity data) => json.encode(data.toJson());

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? id,
    String? name,
    String? email,
    String? token,
    String? idToken,
    String? image,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
