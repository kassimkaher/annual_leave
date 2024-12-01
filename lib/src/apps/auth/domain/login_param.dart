class LoginParams {
  final String email;
  final String password;
  final String phone;

  LoginParams({
    required this.email,
    required this.password,
    required this.phone,
  });
  toJson() {
    return email.contains("@")
        ? {
            "email": email,
            "password": password,
          }
        : {
            "password": password,
            "phone": "964${int.parse(phone)}",
          };
  }
}
