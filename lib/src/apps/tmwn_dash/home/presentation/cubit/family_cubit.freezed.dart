// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FamilyState {
  DataStatus get dataStatus => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  DataFailed<dynamic>? get error => throw _privateConstructorUsedError;
  FamilesModel? get familyModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataStatus dataStatus, int page, int perPage,
            DataFailed<dynamic>? error, FamilesModel? familyModel)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataStatus dataStatus, int page, int perPage,
            DataFailed<dynamic>? error, FamilesModel? familyModel)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataStatus dataStatus, int page, int perPage,
            DataFailed<dynamic>? error, FamilesModel? familyModel)?
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

  /// Create a copy of FamilyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilyStateCopyWith<FamilyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilyStateCopyWith<$Res> {
  factory $FamilyStateCopyWith(
          FamilyState value, $Res Function(FamilyState) then) =
      _$FamilyStateCopyWithImpl<$Res, FamilyState>;
  @useResult
  $Res call(
      {DataStatus dataStatus,
      int page,
      int perPage,
      DataFailed<dynamic>? error,
      FamilesModel? familyModel});

  $FamilesModelCopyWith<$Res>? get familyModel;
}

/// @nodoc
class _$FamilyStateCopyWithImpl<$Res, $Val extends FamilyState>
    implements $FamilyStateCopyWith<$Res> {
  _$FamilyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataStatus = null,
    Object? page = null,
    Object? perPage = null,
    Object? error = freezed,
    Object? familyModel = freezed,
  }) {
    return _then(_value.copyWith(
      dataStatus: null == dataStatus
          ? _value.dataStatus
          : dataStatus // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DataFailed<dynamic>?,
      familyModel: freezed == familyModel
          ? _value.familyModel
          : familyModel // ignore: cast_nullable_to_non_nullable
              as FamilesModel?,
    ) as $Val);
  }

  /// Create a copy of FamilyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilesModelCopyWith<$Res>? get familyModel {
    if (_value.familyModel == null) {
      return null;
    }

    return $FamilesModelCopyWith<$Res>(_value.familyModel!, (value) {
      return _then(_value.copyWith(familyModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FamilyStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataStatus dataStatus,
      int page,
      int perPage,
      DataFailed<dynamic>? error,
      FamilesModel? familyModel});

  @override
  $FamilesModelCopyWith<$Res>? get familyModel;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FamilyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataStatus = null,
    Object? page = null,
    Object? perPage = null,
    Object? error = freezed,
    Object? familyModel = freezed,
  }) {
    return _then(_$InitialImpl(
      dataStatus: null == dataStatus
          ? _value.dataStatus
          : dataStatus // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DataFailed<dynamic>?,
      familyModel: freezed == familyModel
          ? _value.familyModel
          : familyModel // ignore: cast_nullable_to_non_nullable
              as FamilesModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.dataStatus = DataStatus.ideal,
      this.page = 1,
      this.perPage = 20,
      this.error,
      this.familyModel});

  @override
  @JsonKey()
  final DataStatus dataStatus;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;
  @override
  final DataFailed<dynamic>? error;
  @override
  final FamilesModel? familyModel;

  @override
  String toString() {
    return 'FamilyState.initial(dataStatus: $dataStatus, page: $page, perPage: $perPage, error: $error, familyModel: $familyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.dataStatus, dataStatus) ||
                other.dataStatus == dataStatus) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.familyModel, familyModel) ||
                other.familyModel == familyModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dataStatus, page, perPage, error, familyModel);

  /// Create a copy of FamilyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataStatus dataStatus, int page, int perPage,
            DataFailed<dynamic>? error, FamilesModel? familyModel)
        initial,
  }) {
    return initial(dataStatus, page, perPage, error, familyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DataStatus dataStatus, int page, int perPage,
            DataFailed<dynamic>? error, FamilesModel? familyModel)?
        initial,
  }) {
    return initial?.call(dataStatus, page, perPage, error, familyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataStatus dataStatus, int page, int perPage,
            DataFailed<dynamic>? error, FamilesModel? familyModel)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(dataStatus, page, perPage, error, familyModel);
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

abstract class _Initial implements FamilyState {
  const factory _Initial(
      {final DataStatus dataStatus,
      final int page,
      final int perPage,
      final DataFailed<dynamic>? error,
      final FamilesModel? familyModel}) = _$InitialImpl;

  @override
  DataStatus get dataStatus;
  @override
  int get page;
  @override
  int get perPage;
  @override
  DataFailed<dynamic>? get error;
  @override
  FamilesModel? get familyModel;

  /// Create a copy of FamilyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
