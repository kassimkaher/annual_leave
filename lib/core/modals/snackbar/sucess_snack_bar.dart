import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class SnackBarMessage {
  SnackBarMessage.sucess({required String message}) {
    final theme = Theme.of(navigatorKey.currentContext!);
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar(
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 20,
            cornerSmoothing: 1,
          ),
        ),
        backgroundColor: theme.colorScheme.primaryContainer,

        // margin: const EdgeInsets.all(kDefaultPadding),
        content: ListTile(
          leading: const Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
          title: Text(
            message,
            //style: Theme.of(navigatorKey.currentContext!).textTheme.titleMedium,
          ),
          subtitle: const Text('Success'),
        )));
  }
  SnackBarMessage.error({required String message}) {
    final theme = Theme.of(navigatorKey.currentContext!);
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar(
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 20,
            cornerSmoothing: 1,
          ),
        ),
        backgroundColor: theme.colorScheme.errorContainer,

        // margin: const EdgeInsets.all(kDefaultPadding),
        content: ListTile(
          leading: const Icon(
            Icons.error,
            color: Colors.red,
          ),
          title: Text(
            message,
            //style: Theme.of(navigatorKey.currentContext!).textTheme.titleMedium,
          ),
          subtitle: const Text('Error'),
        )));
  }
  SnackBarMessage.waning({required String message}) {
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar(
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: 20,
            cornerSmoothing: 1,
          ),
        ),
        backgroundColor: Colors.amber.shade100,
        // margin: const EdgeInsets.all(kDefaultPadding),
        content: ListTile(
          leading: const Icon(
            Icons.warning,
            color: Colors.amber,
          ),
          title: Text(
            message,
            //style: Theme.of(navigatorKey.currentContext!).textTheme.titleMedium,
          ),
          subtitle: const Text('Warning'),
        )));
  }
}
