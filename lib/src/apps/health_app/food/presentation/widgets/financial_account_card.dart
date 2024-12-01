import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/financial_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/financial%20entity/financial_account.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/transaction%20entity/transaction_entity.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/financial_accounts/financial_accounts_logic/financial_accounts_cubit.dart';
import 'package:annual_leave/src/apps/financial_accounts/presentation/pages/add_expense_form.dart';
import 'package:annual_leave/src/widgets/custom_containder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';

class FinancialAcountCard extends StatelessWidget {
  const FinancialAcountCard({
    super.key,
    required this.financialData,
  });
  final FinancialAccountEntity financialData;
  @override
  Widget build(BuildContext context) {
    final financialAccountsCubit = context.read<FinancialAccountsCubit>();
    final theme = Theme.of(context);

    return SafeArea(
      bottom: false,
      child: BoxView(
        borderRadius: 20,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [theme.primaryColor, theme.colorScheme.secondary],
            transform: const GradientRotation(-0.5)),
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultSpacing),
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
            ),

            BoxView(
              borderRadius: 12,
              borderWidth: 2,
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

            const SizedBox(height: kDefaultSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
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
                    financialAccountsCubit.updateData(data);
                  },
                  child: const Icon(
                    HugeIcons.strokeRoundedCircleArrowDownRight,
                    size: 30,
                  ),
                ),
                FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
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
                    financialAccountsCubit.updateData(data);
                  },
                  child: const Icon(
                    HugeIcons.strokeRoundedCircleArrowUpRight,
                    size: 30,
                  ),
                ),
                BlocBuilder<FinancialAccountsCubit, FinancialAccountsState>(
                    builder: (context, state) => state.remoteDataStatus ==
                            RemoteDataStatus.subloading
                        ? const CircularProgressIndicator()
                        : SizedBox(
                            height: 50,
                            width: 50,
                            child: FloatingActionButton(
                              elevation: 0,
                              backgroundColor: theme.cardColor,
                              child: const Icon(HugeIcons.strokeRoundedRepeat),
                              onPressed: () {
                                context
                                    .read<FinancialAccountsCubit>()
                                    .getTransactionEvent();
                              },
                            ),
                          )),
              ],
            )
            // const SizedBox(height: kDefaultSpacing),
            // _buildActionUi(context, financialAccountsCubit, theme),
          ],
        ),
      ),
    );
//   }

//   Row _buildActionUi(BuildContext context,
//       FinancialAccountsCubit financialAccountsCubit, ThemeData theme) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         FloatingActionButton(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//           onPressed: () async {
//             final data = await showModalBottomSheet<TransactionEntity>(
//                 context: context,
//                 builder: (context) {
//                   return const AddExpenseDialog();
//                 });
//             if (data == null) {
//               return;
//             }
//             financialAccountsCubit.updateData(data);
//           },
//           child: const Icon(HugeIcons.strokeRoundedMoneyAdd02),
//         ),
//         FloatingActionButton(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//           onPressed: () async {
//             final data = await showModalBottomSheet<TransactionEntity>(
//                 context: context,
//                 builder: (context) {
//                   return const AddExpenseDialog();
//                 });
//             if (data == null) {
//               return;
//             }
//             financialAccountsCubit.updateData(data);
//           },
//           child: const Icon(HugeIcons.strokeRoundedMoneyAdd02),
//         ),
//       ],
//     );
//   }
// }
  }
}
