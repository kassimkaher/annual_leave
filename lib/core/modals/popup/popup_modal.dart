import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/widgets/custom_containder.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T?> showForm<T>({required Widget child, required String title}) {
  final theme = Theme.of(navigatorKey.currentContext!);
  return showCupertinoModalPopup<T>(
      context: navigatorKey.currentContext!,
      builder: (context) {
        return SafeArea(
          child: Material(
            color: Colors.transparent,
            child: BoxView(
              color: theme.scaffoldBackgroundColor,
              borderRadius: 25,
              margin: const EdgeInsets.all(kDefaultPadding),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: kDefaultSpacing, vertical: 0),
                title: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
                    Text(
                      title,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
                subtitle: Card(
                    shape: SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius(
                        cornerRadius: 25,
                        cornerSmoothing: 1,
                      ),
                    ),
                    margin: const EdgeInsets.only(
                        top: kDefaultSpacing, bottom: kDefaultPadding),
                    color: Colors.white,
                    //  borderRadius: kDefaultBorderRadius,
                    child: child),
              ),
            ),
          ),
        );
      });
}
