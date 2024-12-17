import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:flutter/material.dart';

Future<dynamic> showTMDialog(
    {required String title,
    String? msg,
    required Icon icon,
    Function()? onDissmiss,
    Widget? view,
    bool? barrierDismissible}) {
  final theme = Theme.of(navigatorKey.currentContext!);
  final query = MediaQuery.of(navigatorKey.currentContext!);
  Widget okButton = ElevatedButton(
    onPressed: () {
      navigatorKey.currentState!.pop();
    },
    child: const Text("back"),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
    ),
    // titlePadding:
    //     const EdgeInsets.all(kDefaultPadding * 1.5).copyWith(bottom: 0),
    contentPadding: const EdgeInsets.all(kDefaultPadding * 1.5)
        .copyWith(top: kDefaultPadding),
    insetPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    actionsPadding:
        const EdgeInsets.all(kDefaultPadding * 1.5).copyWith(top: 0),
    title: SizedBox(
      width: query.size.width,
      child: Row(
        children: [
          Text(
            title.tr(),
            maxLines: 1,
            style: theme.textTheme.titleMedium?.copyWith(
              color: icon.color,
            ),
          ),
          const Spacer(),
          icon,
        ],
      ),
    ),
    content: view ??
        Wrap(
          children: [
            Text(msg!.tr(), style: theme.textTheme.bodySmall),
            const SizedBox(height: kDefaultPadding, width: double.infinity),
            okButton,
          ],
        ),
  );

  return showDialog(
    barrierDismissible: barrierDismissible ?? true,
    context: navigatorKey.currentContext!,
    builder: (BuildContext context) {
      return alert;
    },
  ).then((value) => onDissmiss != null ? onDissmiss() : null);
}

showTMDialogDesition(BuildContext context,
    {required String title,
    Widget? msg,
    required Icon icon,
    bool isDissmis = true,
    required Function() onAgree}) {
  final theme = Theme.of(context);
  final query = MediaQuery.of(context);
  Widget cancelButton = ElevatedButton(
    child: Text("back".tr()),
    onPressed: () => Navigator.pop(context),
  );
  Widget okButton = ElevatedButton(
    child: Text("confirm".tr()),
    onPressed: () => onAgree(),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
    ),
    // titlePadding:
    //     const EdgeInsets.all(kDefaultPadding * 1.5).copyWith(bottom: 0),
    contentPadding: const EdgeInsets.all(kDefaultPadding * 1.5)
        .copyWith(top: kDefaultPadding),
    insetPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    actionsPadding:
        const EdgeInsets.all(kDefaultPadding * 1.5).copyWith(top: 0),
    title: SizedBox(
      width: query.size.width,
      child: Row(
        children: [
          Text(
            title.tr(),
            maxLines: 1,
            style: theme.textTheme.titleMedium?.copyWith(
              color: icon.color,
            ),
          ),
          const Spacer(),
          icon,
        ],
      ),
    ),
    content: Wrap(
      children: [
        msg ?? const SizedBox(),
        const SizedBox(height: kDefaultPadding, width: double.infinity),
        Row(
          children: [
            Expanded(child: okButton),
            const SizedBox(
              width: 5,
            ),
            Expanded(child: cancelButton),
          ],
        ),
      ],
    ),
  );

  showDialog(
    barrierDismissible: isDissmis,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

void showErrorDialog(ErrorResponseModel? error) {
  showDialog(
    context: navigatorKey.currentContext!,
    builder: (context) {
      return AlertDialog(
        title: const Text("Faile Action"),
        content: Text((error?.message.tr() ?? "An error occurred".tr())),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Ok"),
          )
        ],
      );
    },
  );
}
