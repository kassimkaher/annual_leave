import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/src/apps/tmwn_dash/auth/presentation/pages/tm_login_view.dart';
import 'package:annual_leave/src/apps/tmwn_dash/home/presentation/page/home.dart';
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/presentation/logic/app%20config/app_config_cubit.dart';
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/presentation/page/translation_loader_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PrepareAppPage extends StatelessWidget {
  const PrepareAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AppConfigCubit, AppConfigState>(
          listener: (context, state) async {
            if (state.translationStatus == DataStatus.loaded) {
              firstRouter();
            }
          },
          child: const TranslationLoaderPage()),
    );
  }

  firstRouter() {
    if (LocalDatabase.getCridentialFromLocal() != null) {
      navigatorKey.currentState!.pushAndRemoveUntil(
          MaterialPageRoute(builder: (c) => const HomePage()),
          (route) => false);

      return;
    }
    navigatorKey.currentState!.pushAndRemoveUntil(
        MaterialPageRoute(builder: (c) => const TMLoginView()),
        (route) => false);
  }
}
