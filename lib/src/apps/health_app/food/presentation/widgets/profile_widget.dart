import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipSmoothRect(
        radius: SmoothBorderRadius(
          cornerRadius: 25,
          cornerSmoothing: 1,
        ),
        child: SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(
              "assets/images/profile.jpg",
              fit: BoxFit.cover,
            )),
      ),
      title: Text(
        "Financial Account",
        style: theme.textTheme.bodySmall!,
      ),
      subtitle: Text(
        "Alqasem",
        style: theme.textTheme.displayMedium!,
      ),
    );
  }
}
