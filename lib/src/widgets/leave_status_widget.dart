import 'package:annual_leave/core/enums/enums.dart';
import 'package:flutter/material.dart';

class LeaveStatusWidget extends StatelessWidget {
  const LeaveStatusWidget({
    super.key,
    required this.status,
  });
  final LeaveDesition status;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Chip(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          backgroundColor: switch (status) {
            LeaveDesition.APPROVE => Colors.green.withOpacity(0.2),
            LeaveDesition.REJECT => Colors.red.withOpacity(0.2),
            LeaveDesition.PENDING => Colors.amber.withOpacity(0.2),
          },
          side: const BorderSide(
            color: Colors.transparent,
          ),
          label: Text(
            status.name.toLowerCase(),
            style: TextStyle(
              color: switch (status) {
                LeaveDesition.APPROVE => Colors.green,
                LeaveDesition.REJECT => Colors.black,
                LeaveDesition.PENDING => Colors.amber[800],
              },
            ),
          )),
    );
  }
}
