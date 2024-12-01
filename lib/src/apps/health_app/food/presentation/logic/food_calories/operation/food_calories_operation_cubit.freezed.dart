// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_calories_operation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodCaloriesOperationState {
  RemoteDataStatus get remoteDataStatus => throw _privateConstructorUsedError;
  ErrorResponseModel? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RemoteDataStatus remoteDataStatus, ErrorResponseModel? error)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteDataStatus remoteDataStatus, ErrorResponseModel? error)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RemoteDataStatus remoteDataStatus, ErrorResponseModel? error)?
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

  /// Create a copy of FoodCaloriesOperationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodCaloriesOperationStateCopyWith<FoodCaloriesOperationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCaloriesOperationStateCopyWith<$Res> {
  factory $FoodCaloriesOperationStateCopyWith(FoodCaloriesOperationState value,
          $Res Function(FoodCaloriesOperationState) then) =
      _$FoodCaloriesOperationStateCopyWithImpl<$Res,
          FoodCaloriesOperationState>;
  @useResult
  $Res call({RemoteDataStatus remoteDataStatus, ErrorResponseModel? error});
}

/// @nodoc
class _$FoodCaloriesOperationStateCopyWithImpl<$Res,
        $Val extends FoodCaloriesOperationState>
    implements $FoodCaloriesOperationStateCopyWith<$Res> {
  _$FoodCaloriesOperationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodCaloriesOperationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteDataStatus = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FoodCaloriesOperationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RemoteDataStatus remoteDataStatus, ErrorResponseModel? error});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FoodCaloriesOperationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodCaloriesOperationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteDataStatus = null,
    Object? error = freezed,
  }) {
    return _then(_$InitialImpl(
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.remoteDataStatus = RemoteDataStatus.ideal, this.error});

  @override
  @JsonKey()
  final RemoteDataStatus remoteDataStatus;
  @override
  final ErrorResponseModel? error;

  @override
  String toString() {
    return 'FoodCaloriesOperationState.initial(remoteDataStatus: $remoteDataStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.remoteDataStatus, remoteDataStatus) ||
                other.remoteDataStatus == remoteDataStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteDataStatus, error);

  /// Create a copy of FoodCaloriesOperationState
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
            RemoteDataStatus remoteDataStatus, ErrorResponseModel? error)
        initial,
  }) {
    return initial(remoteDataStatus, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteDataStatus remoteDataStatus, ErrorResponseModel? error)?
        initial,
  }) {
    return initial?.call(remoteDataStatus, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RemoteDataStatus remoteDataStatus, ErrorResponseModel? error)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(remoteDataStatus, error);
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

abstract class _Initial implements FoodCaloriesOperationState {
  const factory _Initial(
      {final RemoteDataStatus remoteDataStatus,
      final ErrorResponseModel? error}) = _$InitialImpl;

  @override
  RemoteDataStatus get remoteDataStatus;
  @override
  ErrorResponseModel? get error;

  /// Create a copy of FoodCaloriesOperationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
