// To parse this JSON data, do
//
//     final userMeals = userMealsFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_meals.freezed.dart';
part 'user_meals.g.dart';

List<UserMeals> userMealsFromJson(String str) =>
    List<UserMeals>.from(json.decode(str).map((x) => UserMeals.fromJson(x)));

String userMealsToJson(List<UserMeals> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class UserMeals with _$UserMeals {
  const factory UserMeals({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "meal_food") List<MealFood>? mealFood,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _UserMeals;

  factory UserMeals.fromJson(Map<String, dynamic> json) =>
      _$UserMealsFromJson(json);
}

@freezed
class MealFood with _$MealFood {
  const factory MealFood({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "food_id") int? foodId,
    @JsonKey(name: "meal_id") int? mealId,
    @JsonKey(name: "food") Food? food,
    @JsonKey(name: "grams") int? grams,
  }) = _MealFood;

  factory MealFood.fromJson(Map<String, dynamic> json) =>
      _$MealFoodFromJson(json);
}

@freezed
class Food with _$Food {
  const factory Food({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "MealsFoods") dynamic mealsFoods,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "grams") int? grams,
    @JsonKey(name: "calories") int? calories,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
