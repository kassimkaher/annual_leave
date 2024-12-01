import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/modals/alert_dialog.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/core/validation/email_validation.dart';
import 'package:annual_leave/src/apps/auth/domain/register_param.dart';
import 'package:annual_leave/src/apps/auth/presentation/logic/register_cubit/register_cubit.dart';
import 'package:annual_leave/src/apps/auth/presentation/pages/auth_page.dart';
import 'package:annual_leave/src/widgets/custom_button.dart';
import 'package:annual_leave/src/widgets/custom_drop_down_input_object.dart';
import 'package:annual_leave/src/widgets/spaces.dart';
import 'package:annual_leave/src/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant/keys.dart';

class RigesterView extends StatefulWidget {
  const RigesterView({super.key, required this.pageController});
  final PageController pageController;
  @override
  State<RigesterView> createState() => _RigesterViewState();
}

class _RigesterViewState extends State<RigesterView> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  final ganderController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final registerCubit = RegisterCubit();
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return BlocListener<RegisterCubit, RegisterState>(
      bloc: registerCubit,
      listener: (context, state) {
        if (state.remoteStatus == RemoteDataStatus.error) {
          showErrorDialog(state.error);
        }
        if (state.remoteStatus == RemoteDataStatus.loaded) {
          widget.pageController.nextPage(
              duration: const Duration(milliseconds: 500), curve: Curves.ease);
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
                  buildRegisterUi(),
                  TextButton(
                      onPressed: () {
                        navigatorKey.currentState!.pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (c) => const AuthPage(isLogin: true),
                            ),
                            (a) => true);
                      },
                      child: const Text("Already have an account?")),
                  BlocBuilder<RegisterCubit, RegisterState>(
                    bloc: registerCubit,
                    builder: (context, state) {
                      return CustomButton(
                          isLoading:
                              state.remoteStatus == RemoteDataStatus.loading,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              registerCubit.registerEvent(
                                RegisterParam(
                                  email: emailController.text,
                                  name: nameController.text,
                                  password: passwordController.text,
                                  phone: phoneController.text,
                                  gander: ganderController.text,
                                ),
                              );
                              // register
                            }
                          },
                          lable: "Register");
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

  Column buildRegisterUi() {
    return Column(
      children: [
        TextInputField(
          controller: nameController,
          label: "Name",
          validatThis: (value) {
            if (value?.isEmpty ?? true) {
              return "Name is required";
            }
            return null;
          },
        ),
        const VerticalSpace(),
        TextInputField(
          controller: phoneController,
          label: "Phone",
          validatThis: (value) {
            if (value?.isEmpty ?? true) {
              return "Phone is required";
            }
            if (int.tryParse(value!) == null) {
              return "Phone must be a number";
            }
            if (value.length != 11) {
              return "Phone must be a number";
            }
            return null;
          },
        ),
        const VerticalSpace(),
        TextInputField(
          controller: emailController,
          label: "Email",
          validatThis: (value) {
            if (value == null || value.isEmpty) {
              return "Email is required";
            }
            if (ValidateEmail(value) == false) {
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
        CustomObjectDropDownInput<String>(
          hint: "Select Gander ".tr(),
          selectValue:
              ganderController.text.isEmpty ? null : ganderController.text,
          onValidate: (value) {
            if (value == null || value.isEmpty) {
              return "Gander is required";
            }

            return null;
          },
          getTitle: (value) => value.tr(),
          array: const ["male", "female"],
          onSelect: (value) {
            ganderController.text = value;
          },
        ),
        const VerticalSpace(),
        const VerticalSpace(),
      ],
    );
  }
}
