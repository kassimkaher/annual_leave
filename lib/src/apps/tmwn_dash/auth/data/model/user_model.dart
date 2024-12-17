import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

// LoginCridential loginCridentialFromJson(String str) =>
//     LoginCridential.fromJson(json.decode(str));

// String LoginCridentialToJson(LoginCridential data) => json.encode(data.toJson());

@freezed
class LoginCridential with _$LoginCridential {
  const factory LoginCridential({
    String? token,
    String? email,
    String? refreshToken,
    String? grafanaToken,
  }) = _LoginCridential;

  factory LoginCridential.fromJson(Map<String, dynamic> json) =>
      _$LoginCridentialFromJson(json);
}
