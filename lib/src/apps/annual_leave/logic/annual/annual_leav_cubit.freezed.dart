// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annual_leav_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnnualLeavState {
  RemoteDataStatus get remoteDataStatus => throw _privateConstructorUsedError;
  Worksheet? get worksheet => throw _privateConstructorUsedError;
  Spreadsheet? get tableOfLeaves => throw _privateConstructorUsedError;
  List<AnnualLeavEntity> get leaves => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RemoteDataStatus remoteDataStatus,
            Worksheet? worksheet,
            Spreadsheet? tableOfLeaves,
            List<AnnualLeavEntity> leaves)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RemoteDataStatus remoteDataStatus, Worksheet? worksheet,
            Spreadsheet? tableOfLeaves, List<AnnualLeavEntity> leaves)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteDataStatus remoteDataStatus, Worksheet? worksheet,
            Spreadsheet? tableOfLeaves, List<AnnualLeavEntity> leaves)?
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

  /// Create a copy of AnnualLeavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnualLeavStateCopyWith<AnnualLeavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnualLeavStateCopyWith<$Res> {
  factory $AnnualLeavStateCopyWith(
          AnnualLeavState value, $Res Function(AnnualLeavState) then) =
      _$AnnualLeavStateCopyWithImpl<$Res, AnnualLeavState>;
  @useResult
  $Res call(
      {RemoteDataStatus remoteDataStatus,
      Worksheet? worksheet,
      Spreadsheet? tableOfLeaves,
      List<AnnualLeavEntity> leaves});
}

/// @nodoc
class _$AnnualLeavStateCopyWithImpl<$Res, $Val extends AnnualLeavState>
    implements $AnnualLeavStateCopyWith<$Res> {
  _$AnnualLeavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnualLeavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteDataStatus = null,
    Object? worksheet = freezed,
    Object? tableOfLeaves = freezed,
    Object? leaves = null,
  }) {
    return _then(_value.copyWith(
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      worksheet: freezed == worksheet
          ? _value.worksheet
          : worksheet // ignore: cast_nullable_to_non_nullable
              as Worksheet?,
      tableOfLeaves: freezed == tableOfLeaves
          ? _value.tableOfLeaves
          : tableOfLeaves // ignore: cast_nullable_to_non_nullable
              as Spreadsheet?,
      leaves: null == leaves
          ? _value.leaves
          : leaves // ignore: cast_nullable_to_non_nullable
              as List<AnnualLeavEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AnnualLeavStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RemoteDataStatus remoteDataStatus,
      Worksheet? worksheet,
      Spreadsheet? tableOfLeaves,
      List<AnnualLeavEntity> leaves});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AnnualLeavStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnualLeavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteDataStatus = null,
    Object? worksheet = freezed,
    Object? tableOfLeaves = freezed,
    Object? leaves = null,
  }) {
    return _then(_$InitialImpl(
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      worksheet: freezed == worksheet
          ? _value.worksheet
          : worksheet // ignore: cast_nullable_to_non_nullable
              as Worksheet?,
      tableOfLeaves: freezed == tableOfLeaves
          ? _value.tableOfLeaves
          : tableOfLeaves // ignore: cast_nullable_to_non_nullable
              as Spreadsheet?,
      leaves: null == leaves
          ? _value._leaves
          : leaves // ignore: cast_nullable_to_non_nullable
              as List<AnnualLeavEntity>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.remoteDataStatus = RemoteDataStatus.ideal,
      this.worksheet,
      this.tableOfLeaves,
      final List<AnnualLeavEntity> leaves = const []})
      : _leaves = leaves;

  @override
  @JsonKey()
  final RemoteDataStatus remoteDataStatus;
  @override
  final Worksheet? worksheet;
  @override
  final Spreadsheet? tableOfLeaves;
  final List<AnnualLeavEntity> _leaves;
  @override
  @JsonKey()
  List<AnnualLeavEntity> get leaves {
    if (_leaves is EqualUnmodifiableListView) return _leaves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaves);
  }

  @override
  String toString() {
    return 'AnnualLeavState.initial(remoteDataStatus: $remoteDataStatus, worksheet: $worksheet, tableOfLeaves: $tableOfLeaves, leaves: $leaves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.remoteDataStatus, remoteDataStatus) ||
                other.remoteDataStatus == remoteDataStatus) &&
            (identical(other.worksheet, worksheet) ||
                other.worksheet == worksheet) &&
            (identical(other.tableOfLeaves, tableOfLeaves) ||
                other.tableOfLeaves == tableOfLeaves) &&
            const DeepCollectionEquality().equals(other._leaves, _leaves));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteDataStatus, worksheet,
      tableOfLeaves, const DeepCollectionEquality().hash(_leaves));

  /// Create a copy of AnnualLeavState
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
            RemoteDataStatus remoteDataStatus,
            Worksheet? worksheet,
            Spreadsheet? tableOfLeaves,
            List<AnnualLeavEntity> leaves)
        initial,
  }) {
    return initial(remoteDataStatus, worksheet, tableOfLeaves, leaves);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RemoteDataStatus remoteDataStatus, Worksheet? worksheet,
            Spreadsheet? tableOfLeaves, List<AnnualLeavEntity> leaves)?
        initial,
  }) {
    return initial?.call(remoteDataStatus, worksheet, tableOfLeaves, leaves);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RemoteDataStatus remoteDataStatus, Worksheet? worksheet,
            Spreadsheet? tableOfLeaves, List<AnnualLeavEntity> leaves)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(remoteDataStatus, worksheet, tableOfLeaves, leaves);
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

abstract class _Initial implements AnnualLeavState {
  const factory _Initial(
      {final RemoteDataStatus remoteDataStatus,
      final Worksheet? worksheet,
      final Spreadsheet? tableOfLeaves,
      final List<AnnualLeavEntity> leaves}) = _$InitialImpl;

  @override
  RemoteDataStatus get remoteDataStatus;
  @override
  Worksheet? get worksheet;
  @override
  Spreadsheet? get tableOfLeaves;
  @override
  List<AnnualLeavEntity> get leaves;

  /// Create a copy of AnnualLeavState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
