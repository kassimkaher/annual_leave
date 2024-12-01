// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_calories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodCaloriesState {
  ErrorResponseModel? get error => throw _privateConstructorUsedError;
  List<FoodCaloriesModel> get foodCalories =>
      throw _privateConstructorUsedError;
  RemoteDataStatus get remoteDataStatus => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ErrorResponseModel? error,
            List<FoodCaloriesModel> foodCalories,
            RemoteDataStatus remoteDataStatus,
            int page)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ErrorResponseModel? error,
            List<FoodCaloriesModel> foodCalories,
            RemoteDataStatus remoteDataStatus,
            int page)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ErrorResponseModel? error,
            List<FoodCaloriesModel> foodCalories,
            RemoteDataStatus remoteDataStatus,
            int page)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of FoodCaloriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodCaloriesStateCopyWith<FoodCaloriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCaloriesStateCopyWith<$Res> {
  factory $FoodCaloriesStateCopyWith(
          FoodCaloriesState value, $Res Function(FoodCaloriesState) then) =
      _$FoodCaloriesStateCopyWithImpl<$Res, FoodCaloriesState>;
  @useResult
  $Res call(
      {ErrorResponseModel? error,
      List<FoodCaloriesModel> foodCalories,
      RemoteDataStatus remoteDataStatus,
      int page});
}

/// @nodoc
class _$FoodCaloriesStateCopyWithImpl<$Res, $Val extends FoodCaloriesState>
    implements $FoodCaloriesStateCopyWith<$Res> {
  _$FoodCaloriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodCaloriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? foodCalories = null,
    Object? remoteDataStatus = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel?,
      foodCalories: null == foodCalories
          ? _value.foodCalories
          : foodCalories // ignore: cast_nullable_to_non_nullable
              as List<FoodCaloriesModel>,
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FoodCaloriesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ErrorResponseModel? error,
      List<FoodCaloriesModel> foodCalories,
      RemoteDataStatus remoteDataStatus,
      int page});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FoodCaloriesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodCaloriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? foodCalories = null,
    Object? remoteDataStatus = null,
    Object? page = null,
  }) {
    return _then(_$InitialImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel?,
      foodCalories: null == foodCalories
          ? _value._foodCalories
          : foodCalories // ignore: cast_nullable_to_non_nullable
              as List<FoodCaloriesModel>,
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.error,
      final List<FoodCaloriesModel> foodCalories = const [],
      this.remoteDataStatus = RemoteDataStatus.ideal,
      this.page = 0})
      : _foodCalories = foodCalories;

  @override
  final ErrorResponseModel? error;
  final List<FoodCaloriesModel> _foodCalories;
  @override
  @JsonKey()
  List<FoodCaloriesModel> get foodCalories {
    if (_foodCalories is EqualUnmodifiableListView) return _foodCalories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodCalories);
  }

  @override
  @JsonKey()
  final RemoteDataStatus remoteDataStatus;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'FoodCaloriesState.initial(error: $error, foodCalories: $foodCalories, remoteDataStatus: $remoteDataStatus, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._foodCalories, _foodCalories) &&
            (identical(other.remoteDataStatus, remoteDataStatus) ||
                other.remoteDataStatus == remoteDataStatus) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      const DeepCollectionEquality().hash(_foodCalories),
      remoteDataStatus,
      page);

  /// Create a copy of FoodCaloriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ErrorResponseModel? error,
            List<FoodCaloriesModel> foodCalories,
            RemoteDataStatus remoteDataStatus,
            int page)
        initial,
  }) {
    return initial(error, foodCalories, remoteDataStatus, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ErrorResponseModel? error,
            List<FoodCaloriesModel> foodCalories,
            RemoteDataStatus remoteDataStatus,
            int page)?
        initial,
  }) {
    return initial?.call(error, foodCalories, remoteDataStatus, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ErrorResponseModel? error,
            List<FoodCaloriesModel> foodCalories,
            RemoteDataStatus remoteDataStatus,
            int page)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(error, foodCalories, remoteDataStatus, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FoodCaloriesState {
  const factory _Initial(
      {final ErrorResponseModel? error,
      final List<FoodCaloriesModel> foodCalories,
      final RemoteDataStatus remoteDataStatus,
      final int page}) = _$InitialImpl;

  @override
  ErrorResponseModel? get error;
  @override
  List<FoodCaloriesModel> get foodCalories;
  @override
  RemoteDataStatus get remoteDataStatus;
  @override
  int get page;

  /// Create a copy of FoodCaloriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
