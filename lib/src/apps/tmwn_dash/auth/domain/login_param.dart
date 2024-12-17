class LoginParams {
  final String totp;
  final String password;
  final String username;

  LoginParams({
    required this.totp,
    required this.password,
    required this.username,
  });
  toJson() {
    return {"password": password, "totp": totp, "username": username};
  }
}
