bool ValidateEmail(String email) {
  String pattern =
      r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
  RegExp regex = RegExp(pattern);
  return regex.hasMatch(email);
}
