import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/financial_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/transaction%20model/transaction_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/financial_accounts/operation/financial_operation_cubit.dart';
import 'package:annual_leave/src/widgets/custom_drop_down_input_object.dart';
import 'package:annual_leave/src/widgets/mouny_text_field.dart';
import 'package:annual_leave/src/widgets/spaces.dart';
import 'package:annual_leave/src/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddExpenseDialog extends StatefulWidget {
  const AddExpenseDialog({
    super.key,
    this.index,
    this.transactionModel,
    required this.financialType,
  });

  final int? index;
  final TransactionModel? transactionModel;
  final FinancialType financialType;
  @override
  State<AddExpenseDialog> createState() => _AddExpenseDialogState();
}

class _AddExpenseDialogState extends State<AddExpenseDialog> {
  late FinancialOperationCubit financialOperationCubit;
  @override
  void initState() {
    super.initState();
    financialOperationCubit =
        FinancialOperationCubit(selectedFinanicialType: widget.financialType);
    if (widget.transactionModel != null) {
      financialOperationCubit.fillForm(widget.transactionModel!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    return BlocProvider.value(
        value: financialOperationCubit,
        child: BlocConsumer<FinancialOperationCubit, FinancialOperationState>(
          listener: (context, state) {
            if (state.remoteDataStatus == RemoteDataStatus.loaded) {
              navigatorKey.currentState!
                  .pop(financialOperationCubit.transactionEntity);
            }
          },
          builder: (context, state) => Form(
            key: financialOperationCubit.formKey,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              padding: const EdgeInsets.all(24)
                  .copyWith(bottom: query.viewInsets.bottom),
              child: ListView(children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${"Add".tr()} ${widget.financialType.name}",
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const VerticalSpace(),
                TextInputField(
                  label: "Title".tr(),
                  controller: financialOperationCubit.titleController,
                  validatThis: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter title";
                    }
                    return null;
                  },
                ),
                // if (widget.transactionModel == null)
                //   const VerticalSpace(),
                // if (widget.transactionModel == null)
                //   FinancialTypeDropdown(
                //     isRequired: widget.transactionModel != null,
                //   ),
                const VerticalSpace(),
                PayDatePicker(
                  isRequired: widget.transactionModel != null,
                ),
                const VerticalSpace(),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: MounyTextField(
                    controller: financialOperationCubit.amountController,
                    validatThis: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter amount";
                      }
                      return null;
                    },
                  ),
                ),
                const VerticalSpace(),
                TextAreaInputField(
                  label: "description".tr(),
                  controller: financialOperationCubit.descriptionController,
                ),
                const VerticalSpace(),
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
                      onPressed:
                          state.remoteDataStatus == RemoteDataStatus.loading
                              ? null
                              : () {
                                  if (widget.transactionModel != null) {
                                    financialOperationCubit.update(
                                        widget.transactionModel!.id!,
                                        widget.index!);
                                    return;
                                  }
                                  financialOperationCubit.addTransactionEvent();
                                },
                      child: state.remoteDataStatus == RemoteDataStatus.loading
                          ? const CircularProgressIndicator()
                          : Text(widget.transactionModel != null
                              ? "Update".tr()
                              : "Save".tr()),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}

class PayDatePicker extends StatelessWidget {
  const PayDatePicker({super.key, required this.isRequired});
  final bool isRequired;
  @override
  Widget build(BuildContext context) {
    final financialOperationCubit = context.read<FinancialOperationCubit>();
    return DateInputField(
      validatThis: isRequired
          ? (value) {
              if (value == null || value.isEmpty) {
                return "Please select a date";
              }

              if (DateTime.tryParse((value as String?)!)?.year !=
                  DateTime.now().year) {
                return "Please select a in this year";
              }
              return null;
            }
          : null,
      controller: financialOperationCubit.dateOfPay,
      label: "Pay Date",
    );
  }
}

class FinancialTypeDropdown extends StatelessWidget {
  const FinancialTypeDropdown({super.key, required this.isRequired});
  final bool isRequired;
  @override
  Widget build(BuildContext context) {
    final financialOperationCubit = context.read<FinancialOperationCubit>();
    return CustomObjectDropDownInput<FinancialType>(
      hint: "Select Financial Type".tr(),
      selectValue: financialOperationCubit.selectedFinanicialType,
      onValidate: (value) {
        if (value == null) {
          return "Please select a leave type";
        }
        return null;
      },
      getTitle: (value) => value.name,
      array: FinancialType.values,
      onSelect: (value) {
        financialOperationCubit.selectedFinanicialType = value;
      },
    );
  }
}
