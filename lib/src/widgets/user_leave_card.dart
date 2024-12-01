import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/date_extention.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/annual_leave/add_leave_form.dart';
import 'package:annual_leave/src/apps/annual_leave/entityes/leaves_data_entity.dart';
import 'package:annual_leave/src/apps/annual_leave/logic/annual/annual_leav_cubit.dart';
import 'package:annual_leave/src/widgets/leave_status_widget.dart';
import 'package:annual_leave/src/widgets/leave_type_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeavesCard extends StatelessWidget {
  const LeavesCard({
    super.key,
    required this.annualLeavEntity,
  });
  final AnnualLeavEntity annualLeavEntity;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        DeleteLeaveDialog.show(context, annualLeavEntity);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: kDefaultSpacing),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        child: ListTile(
          title: Row(
            children: [
              Text(
                "${annualLeavEntity.endDate!.difference(annualLeavEntity.startDate!).inDays} Day",
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const Spacer(),
              LeaveStatusWidget(status: annualLeavEntity.leaveDesition),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "${annualLeavEntity.startDate!.toDateFormat} - ${annualLeavEntity.endDate!.toDateFormat}",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: kDefaultSpacing),
              Row(
                children: [
                  LeaveTyepeWidget(status: annualLeavEntity.type),
                  const Spacer(),
                  if (annualLeavEntity.leaveDesition == LeaveDesition.PENDING)
                    EditLeaveButton(annualLeavEntity: annualLeavEntity),
                ],
              ),
              // const Divider(),
              if (annualLeavEntity.comment.isNotEmpty)
                Container(
                  margin: const EdgeInsets.only(top: kDefaultSpacing),
                  padding: const EdgeInsets.all(kDefaultSpacing),
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                  ),
                  child: Text(annualLeavEntity.comment),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditLeaveButton extends StatelessWidget {
  const EditLeaveButton({
    super.key,
    required this.annualLeavEntity,
  });
  final AnnualLeavEntity annualLeavEntity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () async {
          final annualLeavCubit = context.read<AnnualLeavCubit>();
          final index = annualLeavCubit.state.leaves.indexOf(annualLeavEntity);
          showAdaptiveDialog(
            context: context,
            builder: (context) {
              return AddLeaveDialog(
                worksheet: annualLeavCubit.state.worksheet!,
                isEdit: true,
                annualLeavEntity: annualLeavEntity,
                rowIndex: annualLeavCubit.getRowNumber(annualLeavEntity),
              );
            },
          ).then((data) {
            if (data != null && data is AnnualLeavEntity) {
              annualLeavCubit.updateData(data, index);
            }
          });
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class DeleteLeaveDialog {
  static show(BuildContext context, AnnualLeavEntity annualLeavEntity) {
    final annualLeavCubit = context.read<AnnualLeavCubit>();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Delete Leave"),
          content: Text(
              "Are you sure you want to delete the leave from ${annualLeavEntity.startDate!.toDateFormat} to ${annualLeavEntity.endDate!.toDateFormat}"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                annualLeavCubit.deleteLeave(annualLeavEntity);
              },
              child: const Text("Delete"),
            ),
          ],
        );
      },
    );
  }
}
