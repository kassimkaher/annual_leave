import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/financial_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/transaction%20entity/transaction_entity.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/financial_accounts/financial_accounts_logic/financial_accounts_cubit.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/pages/add_expense_form.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/widgets/expense_card.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/widgets/financial_account_card.dart';
import 'package:annual_leave/src/widgets/custom_containder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';

class FinancialAccountsPage extends StatelessWidget {
  const FinancialAccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [theme.primaryColor, theme.colorScheme.secondary],
        //       transform: const GradientRotation(0.5)),
        // ),
        child: Stack(
          children: [
            const SizedBox(
              width: double.infinity,
              height: double.infinity,
            ),
            BlocBuilder<FinancialAccountsCubit, FinancialAccountsState>(
                builder: (context, state) => switch (state.remoteDataStatus) {
                      RemoteDataStatus.loading =>
                        const Center(child: CircularProgressIndicator()),
                      RemoteDataStatus.error => Center(
                          child: Text(state.error.toString()),
                        ),
                      RemoteDataStatus.loaded ||
                      RemoteDataStatus.cache ||
                      RemoteDataStatus.subloading =>
                        Stack(
                          children: [
                            Column(
                              children: [
                                FinancialAcountCard(
                                    financialData: state.financialAccountData!),
                                const Tapview(),
                                Expanded(
                                  child: ListView.builder(
                                    padding: const EdgeInsets.symmetric(
                                            horizontal: kDefaultPadding,
                                            vertical: 12)
                                        .copyWith(bottom: kDefaultPadding * 2),
                                    itemCount: state.expenseItems.length,
                                    itemBuilder: (context, index) {
                                      final item = state.expenseItems[index];
                                      return ExpenseCard(item: item);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            if (state.allItems.isEmpty)
                              const Icon(Icons.hourglass_empty)
                          ],
                        ),
                      _ => SafeArea(
                          child: FilledButton.tonal(
                            onPressed: () => context
                                .read<FinancialAccountsCubit>()
                                .getTransactionEvent(),
                            child: Text(state.remoteDataStatus.name),
                          ),
                        ),
                    }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () async {
          final data = await showModalBottomSheet<TransactionEntity>(
              backgroundColor: theme.cardColor,
              context: context,
              builder: (context) {
                return const AddExpenseDialog(
                  financialType: FinancialType.EXPENSE,
                );
              });
          if (data == null) {
            return;
          }
          navigatorKey.currentContext!
              .read<FinancialAccountsCubit>()
              .updateData(data);
        },
        child: const Icon(
          HugeIcons.strokeRoundedCircleArrowDownRight,
          size: 30,
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     final data = await showModalBottomSheet<TransactionEntity>(
      //         context: context,
      //         builder: (context) {
      //           return const AddExpenseDialog();
      //         });
      //     if (data == null) {
      //       return;
      //     }
      //     financialAccountsCubit.updateData(data);
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

class Tapview extends StatelessWidget {
  const Tapview({super.key});

  @override
  Widget build(BuildContext context) {
    return const BoxView(
        borderRadius: 12,
        color: Colors.black87,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [],
        ));
  }
}
