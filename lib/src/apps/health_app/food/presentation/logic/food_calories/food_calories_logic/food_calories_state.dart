part of 'food_calories_cubit.dart';

@freezed
class FoodCaloriesState with _$FoodCaloriesState {
  const factory FoodCaloriesState.initial(
      {ErrorResponseModel? error,
      @Default([]) List<FoodCaloriesModel> foodCalories,
      @Default(RemoteDataStatus.ideal) RemoteDataStatus remoteDataStatus,
      @Default(0) int page}) = _Initial;
}
