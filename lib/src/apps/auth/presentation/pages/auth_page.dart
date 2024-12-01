import 'package:annual_leave/src/apps/auth/presentation/pages/login_view.dart';
import 'package:annual_leave/src/apps/auth/presentation/pages/otp_page.dart';
import 'package:annual_leave/src/apps/auth/presentation/pages/register_view.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key, required this.isLogin});
  final bool isLogin;
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // final textStyle = Theme.of(context).textTheme;
    return PageView(
      controller: pageController,
      children: [
        AnimatedSwitcher(
            duration: const Duration(),
            child: widget.isLogin
                ? LoginView(pageController: pageController)
                : RigesterView(pageController: pageController)),
        const OtpPage()
      ],
    );
  }
}
