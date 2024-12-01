part of 'food_calories_operation_cubit.dart';

@freezed
class FoodCaloriesOperationState with _$FoodCaloriesOperationState {
  const factory FoodCaloriesOperationState.initial(
      {@Default(RemoteDataStatus.ideal) RemoteDataStatus remoteDataStatus,
      ErrorResponseModel? error}) = _Initial;
}
