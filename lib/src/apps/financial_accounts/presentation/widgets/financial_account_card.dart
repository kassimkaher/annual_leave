import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/financial_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/financial%20entity/financial_account.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/transaction%20entity/transaction_entity.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/financial_accounts/financial_accounts_logic/financial_accounts_cubit.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/pages/add_expense_form.dart';
import 'package:annual_leave/src/widgets/custom_containder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FinancialAcountCard extends StatelessWidget {
  const FinancialAcountCard({
    super.key,
    required this.financialData,
  });
  final FinancialAccountEntity financialData;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      bottom: false,
      child: BoxView(
        borderRadius: 20,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        color: theme.colorScheme.primaryContainer,
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultSpacing * 2),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Available'.tr(),
                style: theme.textTheme.bodySmall,
              ),
              subtitle: Text(
                (financialData.amount - financialData.expense)
                    .toString()
                    .toPrice(),
                style: theme.textTheme.displayLarge!.copyWith(fontSize: 28),
              ),
              trailing: FilledButton(
                onPressed: () async {
                  final data = await showModalBottomSheet<TransactionEntity>(
                      backgroundColor: theme.cardColor,
                      context: context,
                      builder: (context) {
                        return const AddExpenseDialog(
                          financialType: FinancialType.INCOME,
                        );
                      });
                  if (data == null) {
                    return;
                  }
                  navigatorKey.currentContext!
                      .read<FinancialAccountsCubit>()
                      .updateData(data);
                },
                child: Text("add_mony".tr()),
              ),
              // BlocBuilder<FinancialAccountsCubit, FinancialAccountsState>(
            ),
            const SizedBox(height: kDefaultSpacing),
            BoxView(
              borderRadius: 12,
              borderWidth: 1.2,
              // color: Colors.black87,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              borderColor: Colors.black45,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Expense'.tr(),
                  style: theme.textTheme.bodyMedium!,
                ),
                subtitle: Text(
                  financialData.expense.toString().toPrice(),
                  style: theme.textTheme.displayMedium!,
                ),
              ),
            ),
            financialData.due < 1
                ? const SizedBox()
                : ListTile(
                    title: Text(
                      'Due'.tr(),
                      style: theme.textTheme.bodySmall,
                    ),
                    subtitle: Text(
                      financialData.due.toString().toPrice(),
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
