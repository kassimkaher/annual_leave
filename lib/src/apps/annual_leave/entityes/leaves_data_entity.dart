import 'package:annual_leave/core/enums/enums.dart';

class AnnualLeavEntity {
  int row;
  final String email;
  final String name;
  final String start;
  final String end;
  final DateTime? startDate;
  final DateTime? endDate;
  final LeaveType type;

  final LeaveDesition leaveDesition;
  final String comment;

  AnnualLeavEntity({
    required this.email,
    required this.name,
    required this.start,
    required this.end,
    required this.type,
    required this.leaveDesition,
    required this.comment,
    this.startDate,
    this.endDate,
    this.row = 0,
  });
  AnnualLeavEntity copyWith({
    int? row,
    String? email,
    String? name,
    String? start,
    String? end,
    DateTime? startDate,
    DateTime? endDate,
    LeaveType? type,
    LeaveDesition? leaveDesition,
    String? comment,
  }) {
    return AnnualLeavEntity(
      row: row ?? this.row,
      email: email ?? this.email,
      name: name ?? this.name,
      start: start ?? this.start,
      end: end ?? this.end,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      type: type ?? this.type,
      leaveDesition: leaveDesition ?? this.leaveDesition,
      comment: comment ?? this.comment,
    );
  }
}
