import 'dart:developer';

import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/src/apps/annual_leave/entityes/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

const List<String> scopes = <String>[
  'email',
  'https://www.googleapis.com/auth/contacts.readonly',
  'https://www.googleapis.com/auth/spreadsheets',
];

class GoogleLoginPage extends StatefulWidget {
  const GoogleLoginPage({super.key});

  @override
  State<GoogleLoginPage> createState() => _GoogleLoginPageState();
}

class _GoogleLoginPageState extends State<GoogleLoginPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    clientId:
        "900763199493-db83pabc0dgk5r5pbah59njqmifguo2c.apps.googleusercontent.com", // Technically unused
    serverClientId:
        "com.googleusercontent.apps.900763199493-db83pabc0dgk5r5pbah59njqmifguo2c",
    forceCodeForRefreshToken: true,
    // /scopes: scopes,
  );

  Future<void> _handleSignIn() async {
    try {
      final data = await _googleSignIn.signIn();
      data?.authentication.then((value) {
        LocalDatabase.login(UserEntity(
          id: data.id,
          name: data.displayName,
          image: data.photoUrl,
          email: data.email,
          token: value.accessToken,
          idToken: value.idToken,
        ));
        navigatorKey.currentState!.pushNamedAndRemoveUntil(
            appType == AppType.MANAGER ? "manager_leaves" : "user_leaves",
            (route) => false);
      });
    } catch (error) {
      log(error.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(milliseconds: 50), () {
      if (LocalDatabase.getUser() != null) {
        navigatorKey.currentState!.pushNamedAndRemoveUntil(
            appType == AppType.MANAGER ? "manager_leaves" : "user_leaves",
            (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Login with Google'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _handleSignIn();
          },
          child: const Text('Sign in with Google'),
        ),
      ),
    );
  }
}
