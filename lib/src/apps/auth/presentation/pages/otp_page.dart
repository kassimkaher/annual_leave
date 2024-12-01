import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/modals/alert_dialog.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/auth/presentation/logic/otp_bloc/otp_cubit.dart';
import 'package:annual_leave/src/widgets/custom_button.dart';
import 'package:annual_leave/src/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({
    super.key,
  });

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  int timer = 0;
  final otpNumberController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final otpCubit = OtpCubit();
  WidgetStatesController btState = WidgetStatesController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    otpCubit.resendOtp();
    increamentTimer();
  }

  increamentTimer() {
    Future.delayed(const Duration(seconds: 1)).then((a) {
      if (timer >= 120) {
        return;
      }
      setState(() {
        timer++;
      });
      increamentTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return BlocListener<OtpCubit, OtpState>(
      bloc: otpCubit,
      listener: (context, state) {
        if (state.remoteStatus == RemoteDataStatus.error) {
          showErrorDialog(state.error);
        }
        if (state.remoteStatus == RemoteDataStatus.loaded) {
          navigatorKey.currentState!.popAndPushNamed("super_app");
        }
      },
      child: BlocBuilder<OtpCubit, OtpState>(
        bloc: otpCubit,
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text('User Email Verification',
                          style: textStyle.titleLarge),
                      const Spacer(),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
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
                              TextButton(
                                  onPressed: timer > 119
                                      ? () {
                                          otpCubit.resendOtp();
                                          setState(() {
                                            timer = 1;
                                          });
                                          increamentTimer();
                                        }
                                      : null,
                                  child: Text(timer > 119
                                      ? "resend code"
                                      : "wait $timer second for resend new code ")),
                            ],
                          ),
                        ),
                      ),
                      CustomButton(
                          isLoading:
                              state.remoteStatus == RemoteDataStatus.loading,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              otpCubit
                                  .verifyUserEvent(otpNumberController.text);
                              // register
                            }
                          },
                          lable: "Verify"),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
