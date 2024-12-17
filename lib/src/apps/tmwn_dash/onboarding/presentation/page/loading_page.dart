import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  final IconData icon;
  final Widget loadingWidget;
  final String loadingHint;

  const LoadingPage(
      {super.key,
      required this.icon,
      required this.loadingWidget,
      required this.loadingHint});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 272,
              child: Icon(
                icon,
                color: theme.colorScheme.outline,
                size: 150,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20, height: 20, child: loadingWidget),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  loadingHint,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
