// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_calories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodCaloriesModelImpl _$$FoodCaloriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FoodCaloriesModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      grams: (json['grams'] as num?)?.toInt(),
      calories: (json['calories'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FoodCaloriesModelImplToJson(
        _$FoodCaloriesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'grams': instance.grams,
      'calories': instance.calories,
    };
