import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'loading_page.dart';

class ErrorPage extends LoadingPage {
  const ErrorPage(
      {super.key,
      required super.icon,
      required super.loadingHint,
      required super.loadingWidget,
      required this.onPressedRetry});
  final Function()? onPressedRetry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: super.build(context),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding)
              .copyWith(bottom: 12),
          child: ElevatedButton.icon(
              icon: const Icon(FeatherIcons.refreshCcw),
              label: Text("retry".tr()),
              onPressed: onPressedRetry),
        ),
      ),
    );
  }
}
