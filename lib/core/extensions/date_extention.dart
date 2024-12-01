import 'package:intl/intl.dart';

extension KQDatime on DateTime {
  String toDayName(local) {
    try {
      final format2 = DateFormat('E', local);
      final d = this;
      final date = format2.format(d);
      return date;
    } catch (e) {
      return "N";
    }
  }

  String get toDateFormat {
    try {
      final format2 = DateFormat("EEE,d MMM", 'en_US');
      final d = this;
      final date = format2.format(d);
      return date;
    } catch (e) {
      return "Ns";
    }
  }

  String toHourName(local) {
    try {
      final format2 = DateFormat('hh:mma', local);
      final d = this;
      final date = format2.format(d);
      return date;
    } catch (e) {
      return "N";
    }
  }
}
