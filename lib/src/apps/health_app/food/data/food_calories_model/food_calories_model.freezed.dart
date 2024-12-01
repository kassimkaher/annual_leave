// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_calories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoodCaloriesModel _$FoodCaloriesModelFromJson(Map<String, dynamic> json) {
  return _FoodCaloriesModel.fromJson(json);
}

/// @nodoc
mixin _$FoodCaloriesModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get grams => throw _privateConstructorUsedError;
  int? get calories => throw _privateConstructorUsedError;

  /// Serializes this FoodCaloriesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodCaloriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodCaloriesModelCopyWith<FoodCaloriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCaloriesModelCopyWith<$Res> {
  factory $FoodCaloriesModelCopyWith(
          FoodCaloriesModel value, $Res Function(FoodCaloriesModel) then) =
      _$FoodCaloriesModelCopyWithImpl<$Res, FoodCaloriesModel>;
  @useResult
  $Res call(
      {int? id, String? title, String? description, int? grams, int? calories});
}

/// @nodoc
class _$FoodCaloriesModelCopyWithImpl<$Res, $Val extends FoodCaloriesModel>
    implements $FoodCaloriesModelCopyWith<$Res> {
  _$FoodCaloriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodCaloriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? grams = freezed,
    Object? calories = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodCaloriesModelImplCopyWith<$Res>
    implements $FoodCaloriesModelCopyWith<$Res> {
  factory _$$FoodCaloriesModelImplCopyWith(_$FoodCaloriesModelImpl value,
          $Res Function(_$FoodCaloriesModelImpl) then) =
      __$$FoodCaloriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? title, String? description, int? grams, int? calories});
}

/// @nodoc
class __$$FoodCaloriesModelImplCopyWithImpl<$Res>
    extends _$FoodCaloriesModelCopyWithImpl<$Res, _$FoodCaloriesModelImpl>
    implements _$$FoodCaloriesModelImplCopyWith<$Res> {
  __$$FoodCaloriesModelImplCopyWithImpl(_$FoodCaloriesModelImpl _value,
      $Res Function(_$FoodCaloriesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodCaloriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? grams = freezed,
    Object? calories = freezed,
  }) {
    return _then(_$FoodCaloriesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodCaloriesModelImpl implements _FoodCaloriesModel {
  const _$FoodCaloriesModelImpl(
      {this.id, this.title, this.description, this.grams, this.calories});

  factory _$FoodCaloriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodCaloriesModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? grams;
  @override
  final int? calories;

  @override
  String toString() {
    return 'FoodCaloriesModel(id: $id, title: $title, description: $description, grams: $grams, calories: $calories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodCaloriesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.grams, grams) || other.grams == grams) &&
            (identical(other.calories, calories) ||
                other.calories == calories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, grams, calories);

  /// Create a copy of FoodCaloriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodCaloriesModelImplCopyWith<_$FoodCaloriesModelImpl> get copyWith =>
      __$$FoodCaloriesModelImplCopyWithImpl<_$FoodCaloriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodCaloriesModelImplToJson(
      this,
    );
  }
}

abstract class _FoodCaloriesModel implements FoodCaloriesModel {
  const factory _FoodCaloriesModel(
      {final int? id,
      final String? title,
      final String? description,
      final int? grams,
      final int? calories}) = _$FoodCaloriesModelImpl;

  factory _FoodCaloriesModel.fromJson(Map<String, dynamic> json) =
      _$FoodCaloriesModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get grams;
  @override
  int? get calories;

  /// Create a copy of FoodCaloriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodCaloriesModelImplCopyWith<_$FoodCaloriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
