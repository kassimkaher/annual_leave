// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';
// import 'package:tamwin/main.dart';
// import 'package:tamwin/src/applying_family/family_member_form/domain/entity/entities.dart';
// import 'package:tamwin/src/applying_family/family_member_form/presentation/bloc/form_bloc.dart';
// import 'package:tamwin/src/core/bloc/profile_cubit/profile_cubit_cubit.dart';
// import 'package:tamwin/src/core/data/model/error_model.dart';
// import 'package:tamwin/src/core/sheet/alert_dialog.dart';
// import 'package:tamwin/src/utils/constants/const.dart';
// import 'package:tamwin/src/utils/enum.dart';
// import 'package:tamwin/src/utils/extensions/extention.dart';
// import 'package:tamwin/src/core/widgets/tm_button.dart';
// import 'package:tamwin/src/core/widgets/radio_decision_buttons_form.dart';
// import 'package:tamwin/src/utils/injector.dart';

// showMemberAliveChange(int index) {
//   final theme = Theme.of(navigatorKey.currentContext!);

//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(kDefaultBorderRadius),
//     ),
//     // titlePadding:
//     //     const EdgeInsets.all(kDefaultPadding * 1.5).copyWith(bottom: 0),
//     contentPadding:
//         const EdgeInsets.all(kDefaultPadding * 1.5).copyWith(top: 0),

//     insetPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//     actionsPadding: EdgeInsets.zero,
//     titlePadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding)
//         .copyWith(top: kDefaultPadding),

//     content: DeleteMemberDialog(theme: theme, index: index),
//   );

//   showDialog(
//     context: navigatorKey.currentContext!,
//     barrierDismissible: false,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }

// class DeleteMemberDialog extends StatefulWidget {
//   const DeleteMemberDialog(
//       {super.key, required this.theme, required this.index});

//   final ThemeData theme;
//   final int index;

//   @override
//   State<DeleteMemberDialog> createState() => _DeleteMemberDialogState();
// }

// class _DeleteMemberDialogState extends State<DeleteMemberDialog> {
//   late FormBloc formBloc;
//   @override
//   void initState() {
//     super.initState();
//     formBloc = getIt<FormBloc>();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final familyCardCubit = context.read<ProfileCubit>();

//     final query = MediaQuery.of(context);

//     return BlocConsumer<FormBloc, FormBlocState>(
//       bloc: formBloc,
//       listener: (context, state) {
//         if (state.formStatus == FormStatus.deleteMemberSuccess) {
//           familyCardCubit.changeMemberBlockState(
//             blockState: state.formInfoEntity.selectedMemberBlockState!,
//             familyMembers: familyCardCubit.members![widget.index],
//           );

//           navigatorKey.currentState!.pop();
//         }
//         if (state.formStatus == FormStatus.deleteMemberError) {
//           handleErrorMeberAliveSubmit(state.dataState!.error!);
//         }
//       },
//       builder: (context, state) {
//         return Form(
//           key: formBloc.aliveFormKey,
//           child: Wrap(
//             children: [
//               const SizedBox(height: kDefaultSpacing, width: double.infinity),
//               SizedBox(
//                 width: query.size.width,
//                 child: Row(
//                   children: [
//                     Text(
//                       "delete_member_title".tr(),
//                       style: widget.theme.textTheme.titleMedium,
//                     ),
//                     const Spacer(),
//                     IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: Icon(
//                         FeatherIcons.x,
//                         color: widget.theme.textTheme.bodySmall!.color,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               DecisionRadioButton(
//                 option1: BlockState.DEAD,
//                 option2: BlockState.TRAVEL,
//                 selectOptional: state.formInfoEntity.selectedMemberBlockState,
//                 title: "delete_member_question".tr(),
//                 errorMessage: "delete_member_error".tr(),
//                 onChange: (value) => formBloc.add(
//                     FormEvent.setMemberAliveSelect(
//                         memberAliveStatus: value as BlockState))
//                 // formBloc.setMemberAliveSelect(value as BlockState)
//                 ,
//                 isReadOnly: false,
//                 titleStyle: widget.theme.textTheme.titleMedium,
//                 titlePadding: const EdgeInsets.only(bottom: kDefaultSpacing),
//               ),
//               const SizedBox(height: kDefaultPadding, width: double.infinity),
//               TMButton(
//                 title: "confirm".tr(),
//                 isLoading: state.formStatus == FormStatus.deleteMemberLoading,
//                 onPressed: () {
//                   formBloc.add(
//                     FormEvent.validateMemberDelete(
//                         selectMemberAlive:
//                             state.formInfoEntity.selectedMemberBlockState,
//                         fatherInfo: familyCardCubit.members![widget.index],
//                         cause: state.formInfoEntity.causeController.text),
//                   );
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void handleErrorMeberAliveSubmit(ErrorResponseModel state) {
//     if (state.statusCode == 400) {
//       showTMDialog(
//         title: "warning".tr(),
//         msg: "invalidInput".tr(),
//         icon: Icon(
//           FeatherIcons.alertTriangle,
//           color: Colors.amber[800],
//         ),
//       );
//     } else if (state.statusCode == 404) {
//       showTMDialog(
//         title: "fail".tr(),
//         msg: "connection_error_confirm".tr(),
//         icon: const Icon(
//           FeatherIcons.alertTriangle,
//           color: Colors.red,
//         ),
//       );
//     } else if (state.statusCode == 500) {
//       showTMDialog(
//         title: "fail".tr(),
//         msg: "server_error".tr(),
//         icon: const Icon(
//           FeatherIcons.alertTriangle,
//           color: Colors.red,
//         ),
//       );
//     } else if (state.statusCode == 401) {
//       // logout
//     }
//   }
// }
