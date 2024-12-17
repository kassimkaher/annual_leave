class RegisterParam {
  final String email;
  final String password;
  final String name;
  final String gander;
  final String phone;

  RegisterParam({
    required this.email,
    required this.password,
    required this.name,
    required this.gander,
    required this.phone,
  });

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
      "name": name,
      "gander": gander,
      "phone": "964${int.parse(phone)}",
      "birthday": "2021-09-09T14:19:45.262563+03:00",
    };
  }
}
