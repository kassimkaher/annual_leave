import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/src/apps/health_app/food/data/datasource/remote.dart';
import 'package:annual_leave/src/apps/health_app/food/data/food_calories_model/food_calories_model.dart';
import 'package:annual_leave/src/apps/health_app/food/domain/entity/food_calories_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_calories_operation_cubit.freezed.dart';
part 'food_calories_state.dart';

class FoodCaloriesOperationCubit extends Cubit<FoodCaloriesOperationState> {
  FoodCaloriesDataSource foodCaloriesDataSource = FoodCaloriesDataSource();
  late FoodCaloriesEntity foodCaloriesEntity;
  TextEditingController titleController = TextEditingController();
  TextEditingController gramstController = TextEditingController();
  TextEditingController caloriesController = TextEditingController();

  TextEditingController descriptionController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  FoodCaloriesOperationCubit()
      : super(const FoodCaloriesOperationState.initial());

  addFoodCaloriesEvent() async {
    if (formKey.currentState!.validate()) {
      foodCaloriesEntity = FoodCaloriesEntity(
        grams: int.parse(gramstController.text.replaceAll(",", "")),
        calories: int.parse(caloriesController.text.replaceAll(",", "")),
        title: titleController.text,
        description: descriptionController.text,
      );

      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));
      final response = await foodCaloriesDataSource.addFoodCaloriesDataSource(
          postData: foodCaloriesEntity);
      if (response is DataFailed) {
        emit(state.copyWith(
            remoteDataStatus: RemoteDataStatus.error, error: response.error));
        return;
      }

      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loaded));
    }
  }

  void fillForm(FoodCaloriesModel data) {
    foodCaloriesEntity = FoodCaloriesEntity(
        id: data.id,
        grams: data.grams!,
        calories: data.calories ?? 0,
        title: data.title!,
        description: data.description);
    gramstController.text = data.grams.toString();
    caloriesController.text = data.calories.toString();

    titleController.text = data.title ?? "";
    descriptionController.text = data.description ?? "";
  }

  Future<void> update(int id, int rowIndex) async {
    if (formKey.currentState!.validate()) {
      foodCaloriesEntity.title = titleController.text;
      foodCaloriesEntity.description = descriptionController.text;
      foodCaloriesEntity.grams =
          double.parse(gramstController.text.replaceAll(",", "")).toInt();
      foodCaloriesEntity.calories =
          double.parse(caloriesController.text.replaceAll(",", "")).toInt();
      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));

      final response =
          await foodCaloriesDataSource.updateFoodCaloriesDataSource(
              postData: foodCaloriesEntity, id: id.toString());
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

    final response = await foodCaloriesDataSource.deleteFoodCaloriesDataSource(
        id: id.toString());
    if (response is DataFailed) {
      emit(state.copyWith(
          remoteDataStatus: RemoteDataStatus.error, error: response.error));
      return;
    }

    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loaded));
  }
}
