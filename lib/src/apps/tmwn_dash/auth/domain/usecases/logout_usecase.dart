import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/src/apps/tmwn_dash/auth/presentation/pages/tm_login_view.dart';
import 'package:flutter/material.dart';

logoutUseCase() {
  LocalDatabase.clearData();
  navigatorKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(builder: (c) => const TMLoginView()), (route) => false);
}
