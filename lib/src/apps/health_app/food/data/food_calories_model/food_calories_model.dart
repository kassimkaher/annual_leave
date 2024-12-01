import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_calories_model.freezed.dart';
part 'food_calories_model.g.dart';

List<FoodCaloriesModel> foodCaloriesModelFromJson([dynamic str]) =>
    List<FoodCaloriesModel>.from(str.map((x) => FoodCaloriesModel.fromJson(x)));

String foodCaloriesModelToJson(List<FoodCaloriesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class FoodCaloriesModel with _$FoodCaloriesModel {
  const factory FoodCaloriesModel({
    int? id,
    String? title,
    String? description,
    int? grams,
    int? calories,
  }) = _FoodCaloriesModel;

  factory FoodCaloriesModel.fromJson(Map<String, dynamic> json) =>
      _$FoodCaloriesModelFromJson(json);
}
