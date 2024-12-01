import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/modals/alert_dialog.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/core/validation/email_validation.dart';
import 'package:annual_leave/src/apps/auth/domain/login_param.dart';
import 'package:annual_leave/src/apps/auth/presentation/logic/login_cubit/login_cubit.dart';
import 'package:annual_leave/src/apps/auth/presentation/pages/auth_page.dart';
import 'package:annual_leave/src/widgets/custom_button.dart';
import 'package:annual_leave/src/widgets/spaces.dart';
import 'package:annual_leave/src/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key, required this.pageController});
  final PageController pageController;
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final passwordController = TextEditingController();

  final phoneOrEmailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final loginCubit = LoginCubit();
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return BlocListener<LoginCubit, LoginState>(
      bloc: loginCubit,
      listener: (context, state) {
        if (state.remoteStatus == RemoteDataStatus.error) {
          if (state.error?.error == ErrorResponse.VerifyNeed) {
            widget.pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
            return;
          }
          showErrorDialog(state.error);
        }
        if (state.remoteStatus == RemoteDataStatus.loaded) {
          navigatorKey.currentState!.popAndPushNamed("super_app");
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Auth Page', style: textStyle.titleLarge),
                  const Spacer(),
                  buildLoginUi(),
                  TextButton(
                      onPressed: () {
                        navigatorKey.currentState!.pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (c) => const AuthPage(isLogin: false),
                            ),
                            (a) => true);
                      },
                      child: const Text("don't have an account?")),
                  BlocBuilder<LoginCubit, LoginState>(
                    bloc: loginCubit,
                    builder: (context, state) {
                      return CustomButton(
                          isLoading:
                              state.remoteStatus == RemoteDataStatus.loading,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              loginCubit.loginEvent(
                                LoginParams(
                                    password: passwordController.text,
                                    phone: phoneOrEmailController.text,
                                    email: phoneOrEmailController.text),
                              );
                            }
                          },
                          lable: "Login");
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildLoginUi() {
    return Column(
      children: [
        TextInputField(
          controller: phoneOrEmailController,
          label: "Phone or Email",
          validatThis: (value) {
            if (value == null || value.isEmpty) {
              return "Phone or Email is required";
            }

            if (int.tryParse(value) != null && value.length != 11) {
              return "Phone must be 11 digits";
            }
            if (int.tryParse(value) != null &&
                value.length != 11 &&
                ValidateEmail(value) == false) {
              return "Email is not valid";
            }
            return null;
          },
        ),
        const VerticalSpace(),
        PasswordInputField(
          controller: passwordController,
          label: "Password",
          validatThis: (value) {
            if (value == null || value.isEmpty) {
              return "Password is required";
            }
            if (value.length < 8) {
              return "Password must be at least 6 characters";
            }
            return null;
          },
        ),
        const VerticalSpace(),
        const VerticalSpace(),
      ],
    );
  }
}
