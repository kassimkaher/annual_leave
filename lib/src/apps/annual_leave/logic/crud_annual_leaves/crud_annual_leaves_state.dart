part of 'crud_annual_leaves_cubit.dart';

@freezed
class CrudAnnualLeavesState with _$CrudAnnualLeavesState {
  const factory CrudAnnualLeavesState.initial(
      {@Default(RemoteDataStatus.ideal)
      RemoteDataStatus remoteDataStatus}) = _Initial;
}
