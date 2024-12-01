// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  RemoteDataStatus get remoteStatus => throw _privateConstructorUsedError;
  ErrorResponseModel? get error => throw _privateConstructorUsedError;
  AuthStep get authStep => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteDataStatus remoteStatus,
            ErrorResponseModel? error, AuthStep authStep)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RemoteDataStatus remoteStatus, ErrorResponseModel? error,
            AuthStep authStep)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteDataStatus remoteStatus, ErrorResponseModel? error,
            AuthStep authStep)?
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

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {RemoteDataStatus remoteStatus,
      ErrorResponseModel? error,
      AuthStep authStep});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteStatus = null,
    Object? error = freezed,
    Object? authStep = null,
  }) {
    return _then(_value.copyWith(
      remoteStatus: null == remoteStatus
          ? _value.remoteStatus
          : remoteStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel?,
      authStep: null == authStep
          ? _value.authStep
          : authStep // ignore: cast_nullable_to_non_nullable
              as AuthStep,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RemoteDataStatus remoteStatus,
      ErrorResponseModel? error,
      AuthStep authStep});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteStatus = null,
    Object? error = freezed,
    Object? authStep = null,
  }) {
    return _then(_$InitialImpl(
      remoteStatus: null == remoteStatus
          ? _value.remoteStatus
          : remoteStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel?,
      authStep: null == authStep
          ? _value.authStep
          : authStep // ignore: cast_nullable_to_non_nullable
              as AuthStep,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.remoteStatus = RemoteDataStatus.ideal,
      this.error,
      this.authStep = AuthStep.login});

  @override
  @JsonKey()
  final RemoteDataStatus remoteStatus;
  @override
  final ErrorResponseModel? error;
  @override
  @JsonKey()
  final AuthStep authStep;

  @override
  String toString() {
    return 'RegisterState.initial(remoteStatus: $remoteStatus, error: $error, authStep: $authStep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.remoteStatus, remoteStatus) ||
                other.remoteStatus == remoteStatus) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.authStep, authStep) ||
                other.authStep == authStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteStatus, error, authStep);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RemoteDataStatus remoteStatus,
            ErrorResponseModel? error, AuthStep authStep)
        initial,
  }) {
    return initial(remoteStatus, error, authStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RemoteDataStatus remoteStatus, ErrorResponseModel? error,
            AuthStep authStep)?
        initial,
  }) {
    return initial?.call(remoteStatus, error, authStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteDataStatus remoteStatus, ErrorResponseModel? error,
            AuthStep authStep)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(remoteStatus, error, authStep);
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

abstract class _Initial implements RegisterState {
  const factory _Initial(
      {final RemoteDataStatus remoteStatus,
      final ErrorResponseModel? error,
      final AuthStep authStep}) = _$InitialImpl;

  @override
  RemoteDataStatus get remoteStatus;
  @override
  ErrorResponseModel? get error;
  @override
  AuthStep get authStep;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
