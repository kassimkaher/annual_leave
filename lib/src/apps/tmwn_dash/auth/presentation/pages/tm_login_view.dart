import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/modals/alert_dialog.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/tmwn_dash/auth/domain/login_param.dart';
import 'package:annual_leave/src/apps/tmwn_dash/auth/presentation/logic/login_cubit/login_cubit.dart';
import 'package:annual_leave/src/apps/tmwn_dash/home/presentation/page/home.dart';
import 'package:annual_leave/src/widgets/custom_button.dart';
import 'package:annual_leave/src/widgets/spaces.dart';
import 'package:annual_leave/src/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class TMLoginView extends StatefulWidget {
  const TMLoginView({super.key});

  @override
  State<TMLoginView> createState() => _TMLoginViewState();
}

class _TMLoginViewState extends State<TMLoginView> {
  final passwordController = TextEditingController(text: "12341234");

  final userNameController = TextEditingController(text: "superadmin1");
  final formKey = GlobalKey<FormState>();
  final otpNumberController = TextEditingController();
  final loginCubit = LoginCubit();
  Size size = const Size(400, 800);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        size = MediaQuery.of(context).size;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // final textStyle = Theme.of(context).textTheme;

    return BlocListener<LoginCubit, LoginState>(
      bloc: loginCubit,
      listener: (context, state) {
        if (state.remoteStatus == RemoteDataStatus.error) {
          showErrorDialog(state.error);
        }
        if (state.remoteStatus == RemoteDataStatus.loaded) {
          navigatorKey.currentState!.pushAndRemoveUntil(
              MaterialPageRoute(builder: (c) => const HomePage()),
              (route) => false);
        }
      },
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Stack(
              children: <Widget>[
                Align(alignment: Alignment.center, child: buildLoginUi()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLoginUi() {
    return Card(
      child: SizedBox(
        //padding: const EdgeInsets.all(kDefaultPadding),

        width: size.width * 0.8,
        // minHeight: size.height * 0.35,
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(child: SvgPicture.asset("assets/svg/tmwn_logo.svg")),
              const VerticalSpace(),
              const VerticalSpace(),
              TextInputField(
                controller: userNameController,
                label: "User Name",
                validatThis: (value) {
                  if (value == null || value.isEmpty) {
                    return " required";
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
              NumberInput(
                controller: otpNumberController,
                label: "Otp",
                maxLength: 6,
                validatThis: (value) {
                  if (value?.isEmpty ?? true) {
                    return "Name is required";
                  }
                  return null;
                },
              ),
              const VerticalSpace(),
              const VerticalSpace(),
              BlocBuilder<LoginCubit, LoginState>(
                bloc: loginCubit,
                builder: (context, state) {
                  return CustomButton(
                      isLoading: state.remoteStatus == RemoteDataStatus.loading,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          loginCubit.loginEvent(
                            LoginParams(
                                password: passwordController.text,
                                username: userNameController.text,
                                totp: otpNumberController.text),
                          );
                        }
                      },
                      lable: "Login");
                },
              ),
              const VerticalSpace(),
            ],
          ),
        ),
      ),
    );
  }
}
