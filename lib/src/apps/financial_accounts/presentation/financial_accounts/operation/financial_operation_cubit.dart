import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/datasource/remote.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/financial_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/transaction%20model/transaction_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/transaction%20entity/transaction_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_operation_cubit.freezed.dart';
part 'financial_operation_state.dart';

class FinancialOperationCubit extends Cubit<FinancialOperationState> {
  TransactionDataSource transactionDataSource = TransactionDataSource();
  late TransactionEntity transactionEntity;
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController dateOfPay = TextEditingController();
  FinancialType selectedFinanicialType = FinancialType.EXPENSE;

  TextEditingController descriptionController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  FinancialOperationCubit({required this.selectedFinanicialType})
      : super(const FinancialOperationState.initial());

  addTransactionEvent() async {
    if (formKey.currentState!.validate()) {
      transactionEntity = TransactionEntity(
        createdAt: DateTime.now(),
        amount: int.parse(amountController.text.replaceAll(",", "")),
        financialType: selectedFinanicialType,
        title: titleController.text,
        description: descriptionController.text,
      );

      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));
      final response = await transactionDataSource.addTransactionDataSource(
          postData: transactionEntity);
      if (response is DataFailed) {
        emit(state.copyWith(
            remoteDataStatus: RemoteDataStatus.error, error: response.error));
        return;
      }

      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loaded));
    }
  }

  void fillForm(TransactionModel data) {
    transactionEntity = TransactionEntity(
        id: data.id,
        createdAt: data.createdAt!,
        amount: data.amount ?? 0,
        financialType: data.financialType!,
        title: data.title!,
        description: data.description);
    amountController.text = data.amount.toString();
    selectedFinanicialType = data.financialType!;

    dateOfPay.text = data.payAt?.toString().split(" ")[0] ?? "";

    titleController.text = data.title ?? "";
    descriptionController.text = data.description ?? "";
  }

  Future<void> update(int id, int rowIndex) async {
    if (formKey.currentState!.validate()) {
      transactionEntity.payAt = DateTime.parse(dateOfPay.text);
      transactionEntity.title = titleController.text;
      transactionEntity.description = descriptionController.text;
      transactionEntity.amount =
          int.parse(amountController.text.replaceAll(",", ""));
      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));

      final response = await transactionDataSource.updateTransactionDataSource(
          postData: transactionEntity, id: id.toString());
      if (response is DataFailed) {
        emit(state.copyWith(
            remoteDataStatus: RemoteDataStatus.error, error: response.error));
        return;
      }

      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loaded));
    }
  }

  Future<void> deleteData(int id) async {
    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));

    final response = await transactionDataSource.deleteTransactionDataSource(
        id: id.toString());
    if (response is DataFailed && response.error?.httpStatus == 410) {
      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loaded));

      return;
    }
    emit(state.copyWith(
        remoteDataStatus: RemoteDataStatus.error, error: response.error));
  }
}
