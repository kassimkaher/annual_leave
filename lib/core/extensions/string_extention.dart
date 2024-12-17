import 'dart:convert';
import 'dart:typed_data';

import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/presentation/logic/app%20config/app_config_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

extension KQ on String? {
  String tr() {
    return navigatorKey.currentContext!
        .read<AppConfigCubit>()
        .getCurrentTranslation()
        .getContent((this ?? "").toUpperCase());
  }

  String get arabicNumber {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsi = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    String text = this ?? "";
    for (int i = 0; i < english.length; i++) {
      text = text.replaceAll(english[i], farsi[i]);
    }
    return text;
  }

  String toDate() {
    if (this == null) {
      return " ";
    }
    try {
      final format2 = DateFormat('E d MMM yyyy ', "en");
      final d = DateTime.parse(this!).toLocal();
      final date = format2.format(d);
      return date;
    } catch (e) {
      return this!;
    }
  }

  String toPrice() {
    if (this == null) {
      return " ";
    }
    if (this!.length > 2) {
      var value = this;
      value = value!.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
      return "$value د.ع";
    }
    return this!;
  }

  String toCalories() {
    if (this == null) {
      return " ";
    }
    if (this!.length > 2) {
      var value = this;
      value = value!.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
      return "$value  kal";
    }
    return this!;
  }

  String toGrams() {
    if (this == null) {
      return " ";
    }
    if (this!.length > 2) {
      var value = this;
      value = value!.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
      return "$value Gr";
    }
    return this!;
  }

  String clearText() {
    if (this == null) {
      return " ";
    }
    if (this!.replaceAll(" ", "").isNotEmpty) {
      return this!;
    }
    return "";
  }

  double? getnum() {
    if (this == null) {
      return 0;
    }
    String? num = this!.replaceAll(RegExp(r'[^0-9]'), '');

    try {
      return num.isEmpty ? null : double.tryParse(num);
    } catch (e) {
      return null;
    }
  }

  String? getTextOnly() => this == null || this!.isEmpty
      ? null
      : this!.replaceAll(RegExp(r'[^a-zء-ي]'), '');

  Uint8List? toUint8List() {
    return base64Decode(this ?? "");
  }

  String toEnglishNumber() {
    return getEnglishNumber(this ?? "");
  }
}

String getTimeFormat({required int minut, required int seconds}) {
  String minuteLeft =
      minut.toString().length < 2 ? "0$minut" : minut.toString();

  String secondsLeft =
      seconds.toString().length < 2 ? "0$seconds" : seconds.toString();

  String result = "$minuteLeft:$secondsLeft";
  return result;
}

String getEnglishNumber(String value) {
  value = value.replaceAll('٠', '0');
  value = value.replaceAll('١', '1');
  value = value.replaceAll('٢', '2');
  value = value.replaceAll('٣', '3');
  value = value.replaceAll('٤', '4');
  value = value.replaceAll('٥', '5');
  value = value.replaceAll('٦', '6');
  value = value.replaceAll('٧', '7');
  value = value.replaceAll('٨', '8');
  value = value.replaceAll('٩', '9');
  return value;
}

extension ListOperation on Map<dynamic, dynamic>? {
  String getContent(String key) {
    return this == null || !this!.containsKey(key)
        ? genaralTranslation[key] ?? key
        : this![key];
  }
}

final genaralTranslation = {
  "INTERNET_ERROR_MSG": "حدث خطأ! يرجى التحقق من الاتصال بشبكة الانترنت",
  "RETRY": "أعد المحاولة",
  "WAIT_PREPARE_APP": "جاري تحضير التطبيق",
  "ERROR_PREPARE_APP": "حدث خطأ أثناء تحضير التطبيق",
  "APP_FRAUD_MESSAGE": "لا يمكن تشغيل هذا التطبيق على جهازك.",
  "GEO_LOCATION_SERVICE": "خدمة الموقع الجغرافي",
  "ALLOW_LOCATION_ACCESS": "السماح بالوصول للموقع ",
  "ALLOW_LOCATION_ACCESS_HINT":
      "يجب السماح للوصول الى خدمة الموقع لضمان عمل التطبيق",
  "OPEN_SETTINGS": "فتح الاعدادات",
  "ENABLE": "تفعيل",
  "ENABLE_LOCATION_SERVICE": "يجب تشغيل خدمة الموقع الجغرافي",
  "NETWORK_NOT_SECURE":
      "يبدو أن هناك مشكلة في اتصالك. يُرجى التحقق من إعدادات الشبكة أو أي إعدادات إضافية على الجهاز لضمان تجربة استخدام سلسة وآمنة"
};
