// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:lucide_icons/lucide_icons.dart';
// import 'package:provider/provider.dart';
// import 'package:tamwin/main.dart';
// import 'package:tamwin/src/FAQ/presintation/faq.dart';
// import 'package:tamwin/src/core/sheet/modal.dart';
// import 'package:tamwin/src/core/widgets/tm_button.dart';
// import 'package:tamwin/src/onboarding/presentation/page/privacy_page.dart';
// import 'package:tamwin/src/onboarding/presentation/widgets/indicator_widget.dart';
// import 'package:tamwin/src/onboarding/presentation/widgets/onboarding_button.dart';
// import 'package:tamwin/src/utils/enum.dart';
// import 'package:tamwin/src/utils/extensions/extention.dart';

// import '../../../utils/utils.dart';
// import '../provider/onboarding_provider.dart';
// class LanguageChooserView extends StatelessWidget {
//   const LanguageChooserView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final controller = context.read<AuthCubit>();
//     return BlocBuilder<AuthCubit, AuthStateState>(
//       builder: (context, state) => AnimatedSlide(
//         duration: const Duration(milliseconds: kDefaultDuration),
//         offset: controller.currentPage == 0
//             ? const Offset(0, 0)
//             : const Offset(1, 0),
//         child: Container(
//           height: 48,
//           margin:
//               const EdgeInsets.only(top: kDefaultPadding, left: 28, right: 28),
//           padding: const EdgeInsets.all(4),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(kDefaultBorderRadius),
//           ),
//           child: Row(
//             children: [
//               Expanded(
//                 child: TMButton(
//                   title: "العربية",
//                   textStyle: theme.textTheme.bodyMedium,
//                   padding: const EdgeInsets.all(7),
//                   borderColor: Colors.transparent,
//                   color: Colors.black,
//                   backgroundColor:
//                       controller.authInfo.selectLanguage == Lang.arabic
//                           ? theme.scaffoldBackgroundColor
//                           : Colors.transparent,
//                   onPressed: () => controller.changeLanguage(Lang.arabic),
//                 ),
//               ),
//               Expanded(
//                 child: TMButton(
//                   title: "كوردى",
//                   textStyle: theme.textTheme.bodyMedium,
//                   padding: const EdgeInsets.all(7),
//                   borderColor: Colors.transparent,
//                   color: Colors.black,
//                   backgroundColor:
//                       controller.authInfo.selectLanguage == Lang.kurdish
//                           ? theme.scaffoldBackgroundColor
//                           : Colors.transparent,
//                   onPressed: () => controller.changeLanguage(Lang.kurdish),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
