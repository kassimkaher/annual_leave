import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/datasource/remote.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/financial_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/transaction%20model/transaction_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/financial%20entity/financial_account.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/gettransaction_param.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/transaction%20entity/transaction_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_accounts_cubit.freezed.dart';
part 'financial_accounts_state.dart';

class FinancialAccountsCubit extends Cubit<FinancialAccountsState> {
  TransactionDataSource transactionDataSource = TransactionDataSource();

  FinancialAccountsCubit() : super(const FinancialAccountsState.initial());

  getTransactionEvent() async {
    emit(state.copyWith(
        remoteDataStatus: state.remoteDataStatus == RemoteDataStatus.ideal
            ? RemoteDataStatus.loading
            : RemoteDataStatus.cache));

    final response = await transactionDataSource.getTransactionDataSource(
        dates: GetTransactionParam.currentMonth());

    if (response is DataFailed) {
      getCacheData();

      emit(state.copyWith(
          remoteDataStatus: state.financialAccountData == null
              ? RemoteDataStatus.error
              : RemoteDataStatus.cache,
          error: response.error));

      return;
    }

    LocalDatabase.saveTransaction(response.data!.reversed.toList());
    analysingData(response.data!);
    if (analysingData(response.data!.reversed.toList())) {
      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loaded));
    }
  }

  void updateData(TransactionEntity data) {
    // loadFinancialData();
    getTransactionEvent();
  }

  bool analysingData(List<TransactionModel> transactionData) {
    final incomingTransaction = transactionData
        .where((element) => element.financialType == FinancialType.INCOME)
        .toList();

    final expenseTransaction = transactionData
        .where((element) => element.financialType == FinancialType.EXPENSE);

    final dueTransaction = transactionData
        .where((element) => element.financialType == FinancialType.DUE);

    final expenseCount = expenseTransaction.fold(0, (previousValue, element) {
      return previousValue + (element.amount ?? 0);
    });

    final incomingCount = incomingTransaction.fold(0, (previousValue, element) {
      return previousValue + (element.amount ?? 0);
    });

    final dueCount = dueTransaction.fold(0, (previousValue, element) {
      return previousValue + (element.amount ?? 0);
    });

    emit(state.copyWith(
      financialAccountData: FinancialAccountEntity(
        amount: incomingCount,
        expense: expenseCount,
        due: dueCount,
      ),
      allItems: transactionData,
      dueItems: dueTransaction.toList(),
      incomeItems: incomingTransaction.toList(),
      expenseItems: expenseTransaction.toList(),
    ));

    return true;
  }

  void getCacheData() {
    final dataCach = LocalDatabase.getTransactionCache() ?? [];
    if (dataCach.isEmpty) {
      return;
    }
    analysingData(LocalDatabase.getTransactionCache() ?? []);

    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.subloading));
  }

  void deleteItem(TransactionModel item) {
    final allItems = state.allItems;
    allItems.remove(item);
    LocalDatabase.saveTransaction(allItems);
    analysingData(allItems);
  }

  void deleteData(int i) {
    List<TransactionModel> oldItems = [];
    oldItems = [...state.allItems];
    oldItems.removeWhere((element) => element.id == i);
    LocalDatabase.saveTransaction(oldItems);
    analysingData(oldItems);
  }
}
