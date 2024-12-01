part of 'financial_operation_cubit.dart';

@freezed
class FinancialOperationState with _$FinancialOperationState {
  const factory FinancialOperationState.initial(
      {@Default(RemoteDataStatus.ideal) RemoteDataStatus remoteDataStatus,
      ErrorResponseModel? error}) = _Initial;
}
