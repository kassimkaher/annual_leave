import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/src/apps/health_app/food/data/datasource/remote.dart';
import 'package:annual_leave/src/apps/health_app/food/data/food_calories_model/food_calories_model.dart';
import 'package:annual_leave/src/apps/health_app/food/domain/entity/food_calories_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_calories_cubit.freezed.dart';
part 'food_calories_state.dart';

class FoodCaloriesCubit extends Cubit<FoodCaloriesState> {
  FoodCaloriesDataSource foodCaloriesDataSource = FoodCaloriesDataSource();

  FoodCaloriesCubit() : super(const FoodCaloriesState.initial());

  getFoodCalories() async {
    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));

    final response =
        await foodCaloriesDataSource.getFoodCaloriesDataSource(page: 1);

    if (response is DataFailed) {
      emit(state.copyWith(
          remoteDataStatus: RemoteDataStatus.error, error: response.error));

      return;
    }

    emit(state.copyWith(
        remoteDataStatus: RemoteDataStatus.loaded,
        foodCalories: response.data!));
  }

  void updateData(FoodCaloriesEntity data) {
    getFoodCalories();
  }
}
