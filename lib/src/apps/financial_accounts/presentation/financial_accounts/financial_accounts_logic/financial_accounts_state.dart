part of 'financial_accounts_cubit.dart';

@freezed
class FinancialAccountsState with _$FinancialAccountsState {
  const factory FinancialAccountsState.initial(
          {FinancialAccountEntity? financialAccountData,
          ErrorResponseModel? error,
          @Default([]) List<TransactionModel> allItems,
          @Default([]) List<TransactionModel> dueItems,
          @Default([]) List<TransactionModel> incomeItems,
          @Default([]) List<TransactionModel> expenseItems,
          @Default(RemoteDataStatus.ideal) RemoteDataStatus remoteDataStatus}) =
      _Initial;
}
