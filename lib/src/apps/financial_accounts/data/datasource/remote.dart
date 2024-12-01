import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/dio_client.dart';
import 'package:annual_leave/core/utils/injector.dart';
import 'package:annual_leave/core/utils/routes.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/transaction%20model/transaction_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/gettransaction_param.dart';
import 'package:annual_leave/src/apps/financial_accounts/domain/transaction%20entity/transaction_entity.dart';

class TransactionDataSource {
  Future<DataState<List<TransactionModel>>> getTransactionDataSource(
      {required GetTransactionParam dates}) async {
    final response = await (getIt<DioClient>().instance('').get(
              "$transactionUrl/date-range?start=${dates.startDate}&end=${dates.endDate}",
            ))
        .result<List<TransactionModel>, List<dynamic>>(
            (transactionModelFromJson));
    return response;
  }

  Future<DataState<void>> addTransactionDataSource(
      {required TransactionEntity postData}) async {
    final response =
        await (getIt<DioClient>().instance('').post(transactionUrl, data: {
      "title": postData.title,
      "description": postData.description,
      "financial_type": postData.financialType.name,
      "amount": postData.amount,
      "created_at": "${postData.createdAt.toIso8601String()}Z",
    })).result<void, void>((s) {});
    return response;
  }

  Future<DataState<void>> updateTransactionDataSource(
      {required TransactionEntity postData, required String id}) async {
    final response = await (getIt<DioClient>()
        .instance('')
        .put("$transactionUrl/$id", data: {
      "title": postData.title,
      "description": postData.description,
      "financial_type": postData.financialType.name,
      "amount": postData.amount,
      "pay_at": "${postData.payAt!.toIso8601String()}Z",
    })).result<void, void>((s) {});
    return response;
  }

  Future<DataState<void>> deleteTransactionDataSource(
      {required String id}) async {
    final response = await (getIt<DioClient>().instance('').delete(
          "$transactionUrl/$id",
        )).result<void, void>((s) {});
    return response;
  }
}
