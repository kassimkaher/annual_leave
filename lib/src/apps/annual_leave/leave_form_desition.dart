import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/annual_leave/entityes/leaves_data_entity.dart';
import 'package:annual_leave/src/apps/annual_leave/logic/crud_annual_leaves/crud_annual_leaves_cubit.dart';
import 'package:annual_leave/src/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gsheets/gsheets.dart';

class LeaveConfirmationDialog extends StatefulWidget {
  const LeaveConfirmationDialog(
      {super.key,
      required this.worksheet,
      required this.annualLeavEntity,
      this.rowIndex});
  final Worksheet worksheet;

  final AnnualLeavEntity annualLeavEntity;
  final int? rowIndex;
  @override
  State<LeaveConfirmationDialog> createState() =>
      _LeaveConfirmationDialogState();
}

class _LeaveConfirmationDialogState extends State<LeaveConfirmationDialog> {
  late CrudAnnualLeavesCubit crudAnnualLeavesCubit;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    crudAnnualLeavesCubit = CrudAnnualLeavesCubit(worksheet: widget.worksheet);

    crudAnnualLeavesCubit.fillForm(widget.annualLeavEntity);
  }

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);

    return BlocProvider.value(
      value: crudAnnualLeavesCubit,
      child: BlocConsumer<CrudAnnualLeavesCubit, CrudAnnualLeavesState>(
        listener: (context, state) {
          if (state.remoteDataStatus == RemoteDataStatus.loaded) {
            navigatorKey.currentState!
                .pop(crudAnnualLeavesCubit.annualLeavEntity);
          }
        },
        builder: (context, state) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: (query.size.height /
                  (state.remoteDataStatus == RemoteDataStatus.error ? 4 : 3.4)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kDefaultBorderRadius),
              child: Scaffold(
                body: Form(
                  key: crudAnnualLeavesCubit.formKey,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    child: Wrap(children: [
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Leave Desition",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                          width: double.infinity, height: kDefaultPadding),
                      const LeaveTypeDropdown(),
                      const SizedBox(
                          width: double.infinity, height: kDefaultSpacing),
                      const LeaveDateRangePicker(),
                      const SizedBox(
                          width: double.infinity, height: kDefaultSpacing),
                      const CommentFieldInput(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              navigatorKey.currentState!.pop();
                            },
                            child: const Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: state.remoteDataStatus ==
                                    RemoteDataStatus.loading
                                ? null
                                : () {
                                    crudAnnualLeavesCubit.save(
                                      crudAnnualLeavesCubit
                                          .selectedLeaveDesition!,
                                      widget.rowIndex!,
                                    );
                                  },
                            child: state.remoteDataStatus ==
                                    RemoteDataStatus.loading
                                ? const CircularProgressIndicator()
                                : const Text("Save"),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CommentFieldInput extends StatelessWidget {
  const CommentFieldInput({super.key});

  @override
  Widget build(BuildContext context) {
    final crudAnnualLeavesCubit = context.read<CrudAnnualLeavesCubit>();
    return TextFormField(
      controller: crudAnnualLeavesCubit.commentController,
      decoration: const InputDecoration(
        labelText: "Comment",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter a comment";
        }
        return null;
      },
    );
  }
}

class LeaveDateRangePicker extends StatelessWidget {
  const LeaveDateRangePicker({super.key});

  @override
  Widget build(BuildContext context) {
    final crudAnnualLeavesCubit = context.read<CrudAnnualLeavesCubit>();
    return Row(
      children: [
        Expanded(
          child: DateInputField(
            enable: false,
            validatThis: (value) {
              if (value == null || value.isEmpty) {
                return "Please select a date";
              }

              if (DateTime.parse((value as String?)!).year !=
                  DateTime.now().year) {
                return "Please select a in this year";
              }
              return null;
            },
            controller: crudAnnualLeavesCubit.dateBeginController,
            label: "Start Date",
          ),
        ),
        const SizedBox(width: 8, height: 12),
        Expanded(
          child: DateInputField(
            enable: false,
            controller: crudAnnualLeavesCubit.dateEndController,
            label: "End Date",
            validatThis: (value) {
              if (value == null || value.isEmpty) {
                return "Please select a date";
              }
              if (DateTime.parse((value as String?)!).year !=
                  DateTime.now().year) {
                return "Please select a in this year";
              }

              final startDate = DateTime.parse(
                  crudAnnualLeavesCubit.dateBeginController.text);
              if (DateTime.parse((value)).difference(startDate).inDays < 1 &&
                  crudAnnualLeavesCubit.selectedLeaveType == LeaveType.FULL) {
                return "End date must be after start date";
              }

              return null;
            },
          ),
        ),
      ],
    );
  }
}

class LeaveTypeDropdown extends StatelessWidget {
  const LeaveTypeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final crudAnnualLeavesCubit = context.read<CrudAnnualLeavesCubit>();
    return DropdownButtonFormField<LeaveDesition>(
      value: crudAnnualLeavesCubit.selectedLeaveDesition,
      validator: (value) {
        if (value == null) {
          return "Please select a leave desition";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Leave Type",
        border: OutlineInputBorder(),
      ),
      items: LeaveDesition.values
          .map((e) => DropdownMenuItem(
                value: e,
                child: Text(e.toString().split('.').last),
              ))
          .toList(),
      onChanged: (value) {
        crudAnnualLeavesCubit.selectedLeaveDesition = value;
      },
    );
  }
}
