import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:flutter/material.dart';

class LeaveTyepeWidget extends StatelessWidget {
  const LeaveTyepeWidget({
    super.key,
    required this.status,
  });
  final LeaveType status;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultSpacing, vertical: kDefaultTextSpacing),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        border: Border.all(
          color: switch (status) {
            LeaveType.FULL => Colors.cyan.shade100,
            LeaveType.HALF => Colors.pink.shade100,
          },
        ),
      ),
      child: Text(
        status.name.toLowerCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: switch (status) {
            LeaveType.FULL => Colors.cyan,
            LeaveType.HALF => Colors.pink,
          },
        ),
      ),
    );
  }
}
