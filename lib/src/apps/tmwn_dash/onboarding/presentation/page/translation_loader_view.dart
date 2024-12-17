import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/extention.dart';
import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/presentation/logic/app%20config/app_config_cubit.dart';
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/presentation/page/error_page.dart';
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/presentation/page/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lucide_icons/lucide_icons.dart';

class TranslationLoaderPage extends StatefulWidget {
  const TranslationLoaderPage({super.key});

  @override
  State<TranslationLoaderPage> createState() => _TranslationLoaderPageState();
}

class _TranslationLoaderPageState extends State<TranslationLoaderPage> {
  late AppConfigCubit onboardingCubit;
  @override
  void initState() {
    super.initState();
    onboardingCubit = context.read<AppConfigCubit>();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<AppConfigCubit, AppConfigState>(
      builder: (context, state) {
        kdp(name: "AppConfigCubit", msg: state.translationStatus.name, c: 'cy');
        if (state.translationStatus != DataStatus.loading) {
          return ErrorPage(
              icon: LucideIcons.settings,
              loadingHint: "error_prepare_app".tr(),
              loadingWidget: const Icon(
                FeatherIcons.alertTriangle,
                color: Colors.red,
              ),
              onPressedRetry: () {
                onboardingCubit.getTranslationEvent();
              });
        }
        return LoadingPage(
            icon: LucideIcons.settings,
            loadingHint: "wait_prepare_app".tr(),
            loadingWidget: CircularProgressIndicator(
              color: theme.primaryColor,
              strokeWidth: 2,
            ));
      },
    );
  }
}
