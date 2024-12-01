import 'package:annual_leave/core/utils/constant/colors.dart';
import 'package:flutter/material.dart';

getTheme(BuildContext context, fontfamily) {
  final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: tmPrimaryColor),
    useMaterial3: true,
    fontFamily: fontfamily,
  );

  return theme.copyWith(
    // useMaterial3: true,
    // scaffoldBackgroundColor: scafoldColor,
    // brightness: Brightness.light,
    // primaryColor: tmPrimaryColor,
    // //disabledColor: kBorderColor,
    // colorScheme: const ColorScheme.dark(
    //   primary: tmPrimaryColor,
    //   outline: Color(0xFFD7DADF),
    //   surface: Color(0xFFEDEDF1),
    //   tertiary: Color(0xFFEDEDF1),
    // ),

    // iconTheme: const IconThemeData(color: titleColor),

    // cardTheme: CardTheme(
    //   color: cardColor,
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
    //   margin: const EdgeInsets.only(bottom: kDefaultSpacing),
    // ),
    // cardColor: cardColor,
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    //     backgroundColor: secondaryColor,
    //     foregroundColor: Colors.black),
    // textButtonTheme: TextButtonThemeData(
    //   style: TextButton.styleFrom(
    //     textStyle: theme.textTheme.titleSmall?.copyWith(
    //         fontSize: 18,
    //         color: Colors.black,
    //         fontFamily: fontfamily,
    //         fontWeight: FontWeight.normal),
    //   ),
    // ),
    // datePickerTheme: const DatePickerThemeData(
    //     dividerColor: Colors.black,
    //     backgroundColor: cardColor,
    //     dayStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    //     yearStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    //     headerHelpStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    //     weekdayStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    //     headerHeadlineStyle:
    //         TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
    //     rangePickerHeaderHelpStyle:
    //         TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    //     inputDecorationTheme: InputDecorationTheme(border: InputBorder.none)),

    textTheme: theme.textTheme.copyWith(
      titleLarge: theme.textTheme.titleLarge
          ?.copyWith(fontSize: 24, color: titleColor, fontFamily: fontfamily),
      displayLarge: theme.textTheme.displayLarge
          ?.copyWith(fontSize: 24, color: Colors.black, fontFamily: fontfamily),
      titleMedium: theme.textTheme.titleMedium?.copyWith(
          fontSize: 20,
          color: titleColor,
          fontWeight: FontWeight.normal,
          fontFamily: fontfamily),
      displayMedium: theme.textTheme.displayMedium?.copyWith(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontFamily: fontfamily),
      titleSmall: theme.textTheme.titleSmall?.copyWith(
          fontSize: 16,
          color: titleColor,
          fontFamily: fontfamily,
          fontWeight: FontWeight.normal),
      displaySmall: theme.textTheme.displaySmall?.copyWith(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontFamily: fontfamily),
      bodyLarge: theme.textTheme.bodyLarge?.copyWith(
          fontFamily: fontfamily,
          fontSize: 20,
          color: tmBodyTextColor,
          fontWeight: FontWeight.normal),
      bodyMedium: theme.textTheme.bodyMedium?.copyWith(
        fontFamily: fontfamily,
        fontSize: 16,
        color: tmBodyTextColor,
      ),
      bodySmall: theme.textTheme.bodySmall?.copyWith(
          fontFamily: fontfamily, fontSize: 14, color: tmBodyTextColor),
    ),
    splashColor: Colors.transparent,
    highlightColor: const Color(0x11440099),
  );
}
