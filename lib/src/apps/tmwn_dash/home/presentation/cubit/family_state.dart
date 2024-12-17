part of 'family_cubit.dart';

@freezed
class FamilyState with _$FamilyState {
  const factory FamilyState.initial(
      {@Default(DataStatus.ideal) DataStatus dataStatus,
      @Default(1) int page,
      @Default(20) int perPage,
      DataFailed? error,
      FamilesModel? familyModel}) = _Initial;
}
