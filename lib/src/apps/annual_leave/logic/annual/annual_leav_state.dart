part of 'annual_leav_cubit.dart';

@freezed
class AnnualLeavState with _$AnnualLeavState {
  const factory AnnualLeavState.initial({
    @Default(RemoteDataStatus.ideal) RemoteDataStatus remoteDataStatus,
    Worksheet? worksheet,
    Spreadsheet? tableOfLeaves,
    @Default([]) List<AnnualLeavEntity> leaves,
  }) = _Initial;
}
