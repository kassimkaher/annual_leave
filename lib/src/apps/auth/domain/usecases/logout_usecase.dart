import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:flutter/material.dart';

logoutUseCase() {
  LocalDatabase.clearData();
  navigatorKey.currentState!
      .pushNamedAndRemoveUntil("auth_page", (Route<dynamic> route) => false);
}
