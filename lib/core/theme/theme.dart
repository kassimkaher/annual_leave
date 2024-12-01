import 'package:annual_leave/core/utils/constant/colors.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

@immutable
class BaseTheme extends ThemeExtension<BaseTheme> {
  const BaseTheme({
    this.primaryColor = tmPrimaryColor,
    this.tertiaryColor = Colors.red,
    this.neutralColor = Colors.blue,
  });
  final Color primaryColor;
  final Color tertiaryColor;
  final Color neutralColor;
  ThemeData get themeData {
    return ThemeData(
        // primaryColor: const Color.fromARGB(255, 108, 125, 0),
        // colorScheme: ColorScheme(
        //     brightness: Brightness.light,
        //     primary: const Color.fromARGB(255, 108, 125, 0),
        //     onPrimary: Colors.white,
        //     primaryContainer: tmPrimaryColor,
        //     onPrimaryContainer: const Color.fromARGB(255, 42, 48, 0),
        //     secondary: Colors.orange.shade100,
        //     onSecondary: Colors.deepOrange,
        //     error: Colors.pink,
        //     onError: Colors.pinkAccent,
        //     surface: const Color(0XFFF1F1F1),
        //     onSurface: const Color.fromARGB(255, 42, 48, 0)),
        cardTheme: CardTheme(
          elevation: 0.08,
          margin: const EdgeInsets.symmetric(vertical: 4),
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: kDefaultBorderRadius,
              cornerSmoothing: 1,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: kDefaultBorderRadius,
                cornerSmoothing: 1,
              ),
            ),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: kDefaultBorderRadius,
                cornerSmoothing: 1,
              ),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: SmoothBorderRadius(
                cornerRadius: kDefaultBorderRadius,
                cornerSmoothing: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: SmoothBorderRadius(
                cornerRadius: kDefaultBorderRadius,
                cornerSmoothing: 1,
              ),
            )),
        colorScheme: ColorScheme.fromSeed(
            //  brightness: Brightness.dark,

            seedColor: const Color.fromARGB(255, 209, 241, 1)),
        useMaterial3: true);
  }

  @override
  ThemeExtension<BaseTheme> copyWith(
      {Color? primaryColor, Color? tertiaryColor, Color? neutralColor}) {
    return BaseTheme(
      primaryColor: primaryColor ?? this.primaryColor,
      tertiaryColor: tertiaryColor ?? this.tertiaryColor,
      neutralColor: neutralColor ?? this.neutralColor,
    );
  }

  @override
  ThemeExtension<BaseTheme> lerp(
      covariant ThemeExtension<BaseTheme>? other, double t) {
    if (other is! BaseTheme) return this;
    return BaseTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      tertiaryColor: Color.lerp(tertiaryColor, other.tertiaryColor, t)!,
      neutralColor: Color.lerp(neutralColor, other.neutralColor, t)!,
    );
  }
}
