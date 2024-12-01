// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_meals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserMealsImpl _$$UserMealsImplFromJson(Map<String, dynamic> json) =>
    _$UserMealsImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      mealFood: (json['meal_food'] as List<dynamic>?)
          ?.map((e) => MealFood.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserMealsImplToJson(_$UserMealsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'meal_food': instance.mealFood,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$MealFoodImpl _$$MealFoodImplFromJson(Map<String, dynamic> json) =>
    _$MealFoodImpl(
      id: (json['id'] as num?)?.toInt(),
      foodId: (json['food_id'] as num?)?.toInt(),
      mealId: (json['meal_id'] as num?)?.toInt(),
      food: json['food'] == null
          ? null
          : Food.fromJson(json['food'] as Map<String, dynamic>),
      grams: (json['grams'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MealFoodImplToJson(_$MealFoodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food_id': instance.foodId,
      'meal_id': instance.mealId,
      'food': instance.food,
      'grams': instance.grams,
    };

_$FoodImpl _$$FoodImplFromJson(Map<String, dynamic> json) => _$FoodImpl(
      id: (json['id'] as num?)?.toInt(),
      mealsFoods: json['MealsFoods'],
      title: json['title'] as String?,
      description: json['description'] as String?,
      grams: (json['grams'] as num?)?.toInt(),
      calories: (json['calories'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$FoodImplToJson(_$FoodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'MealsFoods': instance.mealsFoods,
      'title': instance.title,
      'description': instance.description,
      'grams': instance.grams,
      'calories': instance.calories,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
