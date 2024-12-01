import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/modals/snackbar/sucess_snack_bar.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/transaction%20model/transaction_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/transaction%20entity/transaction_entity.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/financial_accounts/financial_accounts_logic/financial_accounts_cubit.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/financial_accounts/operation/financial_operation_cubit.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/pages/add_expense_form.dart';
import 'package:annual_leave/src/widgets/custom_containder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({
    super.key,
    required this.item,
  });

  final TransactionModel item;

  @override
  Widget build(BuildContext context) {
    final financialAccountsCubit = context.read<FinancialAccountsCubit>();
    final FinancialOperationCubit financialOperationCubit =
        FinancialOperationCubit(
      selectedFinanicialType: item.financialType!,
    );
    final theme = Theme.of(context);
    return InkWell(
      onTap: () async {
        final data = await showModalBottomSheet<TransactionEntity>(
            backgroundColor: theme.cardColor,
            context: context,
            builder: (context) {
              return AddExpenseDialog(
                financialType: item.financialType!,
                transactionModel: item,
                index: financialAccountsCubit.state.allItems.indexOf(item),
              );
            });
        if (data == null) {
          return;
        }
        financialAccountsCubit.updateData(data);
      },
      child: BlocConsumer<FinancialOperationCubit, FinancialOperationState>(
        bloc: financialOperationCubit,
        listener: (context, state) {
          if (state.remoteDataStatus == RemoteDataStatus.error) {
            SnackBarMessage.error(message: state.error.toString());
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error.toString())));
          }
          if (state.remoteDataStatus == RemoteDataStatus.loaded) {
            SnackBarMessage.sucess(message: "Data updated successfully");
          }
        },
        builder: (context, state) {
          return Dismissible(
            key: Key(item.id.toString()),
            direction: DismissDirection.startToEnd,
            // confirmDismiss: (direction) => Future.value(false),
            confirmDismiss: (direction) {
              return showISDeleteDialog(
                context: context,
              );
            },
            onDismissed: (direction) {
              financialAccountsCubit.deleteData(item.id!);
              financialOperationCubit.deleteData(item.id!);
            },

            background: BoxView(
              borderRadius: 16,
              color: theme.colorScheme.errorContainer,
              borderColor: theme.colorScheme.primary,
              borderWidth: 0.25,
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  const SizedBox(width: kDefaultPadding),
                  IconButton.filled(
                    color: theme.colorScheme.onError,
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            ),
            child: BoxView(
              borderRadius: 16,
              color: theme.scaffoldBackgroundColor,
              borderColor: theme.colorScheme.primary,
              borderWidth: 0.25,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                tileColor: Colors.transparent,
                leading: const CircleAvatar(
                  // backgroundColor: iconsColor,
                  child: Icon(HugeIcons.strokeRoundedMoneyReceiveCircle),
                ),
                title: Text(item.title!, style: theme.textTheme.titleMedium),
                subtitle: Text(
                  item.description ?? "",
                  style: theme.textTheme.bodyMedium,
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.amount.toString().toPrice(),
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(
                      item.createdAt.toString().toDate(),
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<bool> showISDeleteDialog({required BuildContext context}) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('Do you want to delete this item?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    ) as bool;
  }
}
