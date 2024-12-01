// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_meals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserMeals _$UserMealsFromJson(Map<String, dynamic> json) {
  return _UserMeals.fromJson(json);
}

/// @nodoc
mixin _$UserMeals {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "meal_food")
  List<MealFood>? get mealFood => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserMeals to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserMeals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMealsCopyWith<UserMeals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMealsCopyWith<$Res> {
  factory $UserMealsCopyWith(UserMeals value, $Res Function(UserMeals) then) =
      _$UserMealsCopyWithImpl<$Res, UserMeals>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "meal_food") List<MealFood>? mealFood,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$UserMealsCopyWithImpl<$Res, $Val extends UserMeals>
    implements $UserMealsCopyWith<$Res> {
  _$UserMealsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMeals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? mealFood = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      mealFood: freezed == mealFood
          ? _value.mealFood
          : mealFood // ignore: cast_nullable_to_non_nullable
              as List<MealFood>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMealsImplCopyWith<$Res>
    implements $UserMealsCopyWith<$Res> {
  factory _$$UserMealsImplCopyWith(
          _$UserMealsImpl value, $Res Function(_$UserMealsImpl) then) =
      __$$UserMealsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "meal_food") List<MealFood>? mealFood,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$UserMealsImplCopyWithImpl<$Res>
    extends _$UserMealsCopyWithImpl<$Res, _$UserMealsImpl>
    implements _$$UserMealsImplCopyWith<$Res> {
  __$$UserMealsImplCopyWithImpl(
      _$UserMealsImpl _value, $Res Function(_$UserMealsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMeals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? mealFood = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserMealsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      mealFood: freezed == mealFood
          ? _value._mealFood
          : mealFood // ignore: cast_nullable_to_non_nullable
              as List<MealFood>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMealsImpl implements _UserMeals {
  const _$UserMealsImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "meal_food") final List<MealFood>? mealFood,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt})
      : _mealFood = mealFood;

  factory _$UserMealsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMealsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "title")
  final String? title;
  final List<MealFood>? _mealFood;
  @override
  @JsonKey(name: "meal_food")
  List<MealFood>? get mealFood {
    final value = _mealFood;
    if (value == null) return null;
    if (_mealFood is EqualUnmodifiableListView) return _mealFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserMeals(id: $id, userId: $userId, title: $title, mealFood: $mealFood, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMealsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._mealFood, _mealFood) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title,
      const DeepCollectionEquality().hash(_mealFood), createdAt, updatedAt);

  /// Create a copy of UserMeals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMealsImplCopyWith<_$UserMealsImpl> get copyWith =>
      __$$UserMealsImplCopyWithImpl<_$UserMealsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMealsImplToJson(
      this,
    );
  }
}

abstract class _UserMeals implements UserMeals {
  const factory _UserMeals(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "user_id") final int? userId,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "meal_food") final List<MealFood>? mealFood,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt}) =
      _$UserMealsImpl;

  factory _UserMeals.fromJson(Map<String, dynamic> json) =
      _$UserMealsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "meal_food")
  List<MealFood>? get mealFood;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of UserMeals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserMealsImplCopyWith<_$UserMealsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MealFood _$MealFoodFromJson(Map<String, dynamic> json) {
  return _MealFood.fromJson(json);
}

/// @nodoc
mixin _$MealFood {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "food_id")
  int? get foodId => throw _privateConstructorUsedError;
  @JsonKey(name: "meal_id")
  int? get mealId => throw _privateConstructorUsedError;
  @JsonKey(name: "food")
  Food? get food => throw _privateConstructorUsedError;
  @JsonKey(name: "grams")
  int? get grams => throw _privateConstructorUsedError;

  /// Serializes this MealFood to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealFood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealFoodCopyWith<MealFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealFoodCopyWith<$Res> {
  factory $MealFoodCopyWith(MealFood value, $Res Function(MealFood) then) =
      _$MealFoodCopyWithImpl<$Res, MealFood>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "food_id") int? foodId,
      @JsonKey(name: "meal_id") int? mealId,
      @JsonKey(name: "food") Food? food,
      @JsonKey(name: "grams") int? grams});

  $FoodCopyWith<$Res>? get food;
}

/// @nodoc
class _$MealFoodCopyWithImpl<$Res, $Val extends MealFood>
    implements $MealFoodCopyWith<$Res> {
  _$MealFoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealFood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? foodId = freezed,
    Object? mealId = freezed,
    Object? food = freezed,
    Object? grams = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foodId: freezed == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as int?,
      mealId: freezed == mealId
          ? _value.mealId
          : mealId // ignore: cast_nullable_to_non_nullable
              as int?,
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
      grams: freezed == grams
          ? _value.grams
          : grams // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of MealFood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodCopyWith<$Res>? get food {
    if (_value.food == null) {
      return null;
    }

    return $FoodCopyWith<$Res>(_value.food!, (value) {
      return _then(_value.copyWith(food: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MealFoodImplCopyWith<$Res>
    implements $MealFoodCopyWith<$Res> {
  factory _$$MealFoodImplCopyWith(
          _$MealFoodImpl value, $Res Function(_$MealFoodImpl) then) =
      __$$MealFoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "food_id") int? foodId,
      @JsonKey(name: "meal_id") int? mealId,
      @JsonKey(name: "food") Food? food,
      @JsonKey(name: "grams") int? grams});

  @override
  $FoodCopyWith<$Res>? get food;
}

/// @nodoc
class __$$MealFoodImplCopyWithImpl<$Res>
    extends _$MealFoodCopyWithImpl<$Res, _$MealFoodImpl>
    implements _$$MealFoodImplCopyWith<$Res> {
  __$$MealFoodImplCopyWithImpl(
      _$MealFoodImpl _value, $Res Function(_$MealFoodImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealFood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? foodId = freezed,
    Object? mealId = freezed,
    Object? food = freezed,
    Object? grams = freezed,
  }) {
    return _then(_$MealFoodImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      foodId: freezed == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as int?,
      mealId: freezed == mealId
          ? _value.mealId
          : mealId // ignore: cast_nullable_to_non_nullable
              as int?,
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as Food?,
      grams: freezed == grams
          ? _value.grams
          : grams // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealFoodImpl implements _MealFood {
  const _$MealFoodImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "food_id") this.foodId,
      @JsonKey(name: "meal_id") this.mealId,
      @JsonKey(name: "food") this.food,
      @JsonKey(name: "grams") this.grams});

  factory _$MealFoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealFoodImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "food_id")
  final int? foodId;
  @override
  @JsonKey(name: "meal_id")
  final int? mealId;
  @override
  @JsonKey(name: "food")
  final Food? food;
  @override
  @JsonKey(name: "grams")
  final int? grams;

  @override
  String toString() {
    return 'MealFood(id: $id, foodId: $foodId, mealId: $mealId, food: $food, grams: $grams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealFoodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.mealId, mealId) || other.mealId == mealId) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.grams, grams) || other.grams == grams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, foodId, mealId, food, grams);

  /// Create a copy of MealFood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealFoodImplCopyWith<_$MealFoodImpl> get copyWith =>
      __$$MealFoodImplCopyWithImpl<_$MealFoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealFoodImplToJson(
      this,
    );
  }
}

abstract class _MealFood implements MealFood {
  const factory _MealFood(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "food_id") final int? foodId,
      @JsonKey(name: "meal_id") final int? mealId,
      @JsonKey(name: "food") final Food? food,
      @JsonKey(name: "grams") final int? grams}) = _$MealFoodImpl;

  factory _MealFood.fromJson(Map<String, dynamic> json) =
      _$MealFoodImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "food_id")
  int? get foodId;
  @override
  @JsonKey(name: "meal_id")
  int? get mealId;
  @override
  @JsonKey(name: "food")
  Food? get food;
  @override
  @JsonKey(name: "grams")
  int? get grams;

  /// Create a copy of MealFood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealFoodImplCopyWith<_$MealFoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Food _$FoodFromJson(Map<String, dynamic> json) {
  return _Food.fromJson(json);
}

/// @nodoc
mixin _$Food {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "MealsFoods")
  dynamic get mealsFoods => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "grams")
  int? get grams => throw _privateConstructorUsedError;
  @JsonKey(name: "calories")
  int? get calories => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Food to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodCopyWith<Food> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) then) =
      _$FoodCopyWithImpl<$Res, Food>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "MealsFoods") dynamic mealsFoods,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "grams") int? grams,
      @JsonKey(name: "calories") int? calories,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$FoodCopyWithImpl<$Res, $Val extends Food>
    implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mealsFoods = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? grams = freezed,
    Object? calories = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mealsFoods: freezed == mealsFoods
          ? _value.mealsFoods
          : mealsFoods // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      grams: freezed == grams
          ? _value.grams
          : grams // ignore: cast_nullable_to_non_nullable
              as int?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodImplCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$$FoodImplCopyWith(
          _$FoodImpl value, $Res Function(_$FoodImpl) then) =
      __$$FoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "MealsFoods") dynamic mealsFoods,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "grams") int? grams,
      @JsonKey(name: "calories") int? calories,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$FoodImplCopyWithImpl<$Res>
    extends _$FoodCopyWithImpl<$Res, _$FoodImpl>
    implements _$$FoodImplCopyWith<$Res> {
  __$$FoodImplCopyWithImpl(_$FoodImpl _value, $Res Function(_$FoodImpl) _then)
      : super(_value, _then);

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mealsFoods = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? grams = freezed,
    Object? calories = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FoodImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mealsFoods: freezed == mealsFoods
          ? _value.mealsFoods
          : mealsFoods // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      grams: freezed == grams
          ? _value.grams
          : grams // ignore: cast_nullable_to_non_nullable
              as int?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodImpl implements _Food {
  const _$FoodImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "MealsFoods") this.mealsFoods,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "grams") this.grams,
      @JsonKey(name: "calories") this.calories,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$FoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "MealsFoods")
  final dynamic mealsFoods;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "grams")
  final int? grams;
  @override
  @JsonKey(name: "calories")
  final int? calories;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Food(id: $id, mealsFoods: $mealsFoods, title: $title, description: $description, grams: $grams, calories: $calories, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.mealsFoods, mealsFoods) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.grams, grams) || other.grams == grams) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(mealsFoods),
      title,
      description,
      grams,
      calories,
      createdAt,
      updatedAt);

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodImplCopyWith<_$FoodImpl> get copyWith =>
      __$$FoodImplCopyWithImpl<_$FoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodImplToJson(
      this,
    );
  }
}

abstract class _Food implements Food {
  const factory _Food(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "MealsFoods") final dynamic mealsFoods,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "grams") final int? grams,
      @JsonKey(name: "calories") final int? calories,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$FoodImpl;

  factory _Food.fromJson(Map<String, dynamic> json) = _$FoodImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "MealsFoods")
  dynamic get mealsFoods;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "grams")
  int? get grams;
  @override
  @JsonKey(name: "calories")
  int? get calories;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodImplCopyWith<_$FoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
