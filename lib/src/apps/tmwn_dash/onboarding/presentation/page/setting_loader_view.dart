// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';
// import 'package:lucide_icons/lucide_icons.dart';
// import 'package:tamwin/src/core/enum/data_status_enum.dart';
// import 'package:tamwin/src/core/views/error_page.dart';
// import 'package:tamwin/src/core/views/loading_page.dart';
// import 'package:tamwin/src/onboarding/presentation/logic/app%20config/app_config_cubit.dart';
// import 'package:tamwin/src/utils/extensions/extention.dart';
// import 'package:tamwin/src/utils/utils.dart';

// class SettingLoaderView extends StatefulWidget {
//   const SettingLoaderView({super.key});

//   @override
//   State<SettingLoaderView> createState() => _SettingLoaderViewState();
// }

// class _SettingLoaderViewState extends State<SettingLoaderView> {
//   late AppConfigCubit onboardingCubit;

//   @override
//   void initState() {
//     super.initState();
//     onboardingCubit = context.read<AppConfigCubit>();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AppConfigCubit, AppConfigState>(
//       builder: (context, state) {
//         if (state.translationStatus == DataStatus.error) {
//           return ErrorPage(
//               icon: LucideIcons.settings,
//               loadingHint: "error_prepare_app".tr(),
//               loadingWidget: const Icon(
//                 FeatherIcons.alertTriangle,
//                 color: Colors.red,
//               ),
//               onPressedRetry: () {
//                 onboardingCubit.getTranslationEvent();
//               });
//         }
//         return LoadingPage(
//             icon: LucideIcons.settings,
//             loadingHint: "wait_prepare_app".tr(),
//             loadingWidget: const CircularProgressIndicator(
//               color: tmPrimaryColor,
//               strokeWidth: 2,
//             ));
//       },
//     );
//   }
// }
