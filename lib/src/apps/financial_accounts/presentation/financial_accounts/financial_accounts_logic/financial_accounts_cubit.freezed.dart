// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_accounts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinancialAccountsState {
  FinancialAccountEntity? get financialAccountData =>
      throw _privateConstructorUsedError;
  ErrorResponseModel? get error => throw _privateConstructorUsedError;
  List<TransactionModel> get allItems => throw _privateConstructorUsedError;
  List<TransactionModel> get dueItems => throw _privateConstructorUsedError;
  List<TransactionModel> get incomeItems => throw _privateConstructorUsedError;
  List<TransactionModel> get expenseItems => throw _privateConstructorUsedError;
  RemoteDataStatus get remoteDataStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FinancialAccountEntity? financialAccountData,
            ErrorResponseModel? error,
            List<TransactionModel> allItems,
            List<TransactionModel> dueItems,
            List<TransactionModel> incomeItems,
            List<TransactionModel> expenseItems,
            RemoteDataStatus remoteDataStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FinancialAccountEntity? financialAccountData,
            ErrorResponseModel? error,
            List<TransactionModel> allItems,
            List<TransactionModel> dueItems,
            List<TransactionModel> incomeItems,
            List<TransactionModel> expenseItems,
            RemoteDataStatus remoteDataStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FinancialAccountEntity? financialAccountData,
            ErrorResponseModel? error,
            List<TransactionModel> allItems,
            List<TransactionModel> dueItems,
            List<TransactionModel> incomeItems,
            List<TransactionModel> expenseItems,
            RemoteDataStatus remoteDataStatus)?
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

  /// Create a copy of FinancialAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancialAccountsStateCopyWith<FinancialAccountsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialAccountsStateCopyWith<$Res> {
  factory $FinancialAccountsStateCopyWith(FinancialAccountsState value,
          $Res Function(FinancialAccountsState) then) =
      _$FinancialAccountsStateCopyWithImpl<$Res, FinancialAccountsState>;
  @useResult
  $Res call(
      {FinancialAccountEntity? financialAccountData,
      ErrorResponseModel? error,
      List<TransactionModel> allItems,
      List<TransactionModel> dueItems,
      List<TransactionModel> incomeItems,
      List<TransactionModel> expenseItems,
      RemoteDataStatus remoteDataStatus});

  $FinancialAccountEntityCopyWith<$Res>? get financialAccountData;
}

/// @nodoc
class _$FinancialAccountsStateCopyWithImpl<$Res,
        $Val extends FinancialAccountsState>
    implements $FinancialAccountsStateCopyWith<$Res> {
  _$FinancialAccountsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinancialAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? financialAccountData = freezed,
    Object? error = freezed,
    Object? allItems = null,
    Object? dueItems = null,
    Object? incomeItems = null,
    Object? expenseItems = null,
    Object? remoteDataStatus = null,
  }) {
    return _then(_value.copyWith(
      financialAccountData: freezed == financialAccountData
          ? _value.financialAccountData
          : financialAccountData // ignore: cast_nullable_to_non_nullable
              as FinancialAccountEntity?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel?,
      allItems: null == allItems
          ? _value.allItems
          : allItems // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      dueItems: null == dueItems
          ? _value.dueItems
          : dueItems // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      incomeItems: null == incomeItems
          ? _value.incomeItems
          : incomeItems // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      expenseItems: null == expenseItems
          ? _value.expenseItems
          : expenseItems // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
    ) as $Val);
  }

  /// Create a copy of FinancialAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinancialAccountEntityCopyWith<$Res>? get financialAccountData {
    if (_value.financialAccountData == null) {
      return null;
    }

    return $FinancialAccountEntityCopyWith<$Res>(_value.financialAccountData!,
        (value) {
      return _then(_value.copyWith(financialAccountData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FinancialAccountsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FinancialAccountEntity? financialAccountData,
      ErrorResponseModel? error,
      List<TransactionModel> allItems,
      List<TransactionModel> dueItems,
      List<TransactionModel> incomeItems,
      List<TransactionModel> expenseItems,
      RemoteDataStatus remoteDataStatus});

  @override
  $FinancialAccountEntityCopyWith<$Res>? get financialAccountData;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FinancialAccountsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinancialAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? financialAccountData = freezed,
    Object? error = freezed,
    Object? allItems = null,
    Object? dueItems = null,
    Object? incomeItems = null,
    Object? expenseItems = null,
    Object? remoteDataStatus = null,
  }) {
    return _then(_$InitialImpl(
      financialAccountData: freezed == financialAccountData
          ? _value.financialAccountData
          : financialAccountData // ignore: cast_nullable_to_non_nullable
              as FinancialAccountEntity?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel?,
      allItems: null == allItems
          ? _value._allItems
          : allItems // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      dueItems: null == dueItems
          ? _value._dueItems
          : dueItems // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      incomeItems: null == incomeItems
          ? _value._incomeItems
          : incomeItems // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      expenseItems: null == expenseItems
          ? _value._expenseItems
          : expenseItems // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      remoteDataStatus: null == remoteDataStatus
          ? _value.remoteDataStatus
          : remoteDataStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.financialAccountData,
      this.error,
      final List<TransactionModel> allItems = const [],
      final List<TransactionModel> dueItems = const [],
      final List<TransactionModel> incomeItems = const [],
      final List<TransactionModel> expenseItems = const [],
      this.remoteDataStatus = RemoteDataStatus.ideal})
      : _allItems = allItems,
        _dueItems = dueItems,
        _incomeItems = incomeItems,
        _expenseItems = expenseItems;

  @override
  final FinancialAccountEntity? financialAccountData;
  @override
  final ErrorResponseModel? error;
  final List<TransactionModel> _allItems;
  @override
  @JsonKey()
  List<TransactionModel> get allItems {
    if (_allItems is EqualUnmodifiableListView) return _allItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allItems);
  }

  final List<TransactionModel> _dueItems;
  @override
  @JsonKey()
  List<TransactionModel> get dueItems {
    if (_dueItems is EqualUnmodifiableListView) return _dueItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dueItems);
  }

  final List<TransactionModel> _incomeItems;
  @override
  @JsonKey()
  List<TransactionModel> get incomeItems {
    if (_incomeItems is EqualUnmodifiableListView) return _incomeItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeItems);
  }

  final List<TransactionModel> _expenseItems;
  @override
  @JsonKey()
  List<TransactionModel> get expenseItems {
    if (_expenseItems is EqualUnmodifiableListView) return _expenseItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseItems);
  }

  @override
  @JsonKey()
  final RemoteDataStatus remoteDataStatus;

  @override
  String toString() {
    return 'FinancialAccountsState.initial(financialAccountData: $financialAccountData, error: $error, allItems: $allItems, dueItems: $dueItems, incomeItems: $incomeItems, expenseItems: $expenseItems, remoteDataStatus: $remoteDataStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.financialAccountData, financialAccountData) ||
                other.financialAccountData == financialAccountData) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._allItems, _allItems) &&
            const DeepCollectionEquality().equals(other._dueItems, _dueItems) &&
            const DeepCollectionEquality()
                .equals(other._incomeItems, _incomeItems) &&
            const DeepCollectionEquality()
                .equals(other._expenseItems, _expenseItems) &&
            (identical(other.remoteDataStatus, remoteDataStatus) ||
                other.remoteDataStatus == remoteDataStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      financialAccountData,
      error,
      const DeepCollectionEquality().hash(_allItems),
      const DeepCollectionEquality().hash(_dueItems),
      const DeepCollectionEquality().hash(_incomeItems),
      const DeepCollectionEquality().hash(_expenseItems),
      remoteDataStatus);

  /// Create a copy of FinancialAccountsState
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
            FinancialAccountEntity? financialAccountData,
            ErrorResponseModel? error,
            List<TransactionModel> allItems,
            List<TransactionModel> dueItems,
            List<TransactionModel> incomeItems,
            List<TransactionModel> expenseItems,
            RemoteDataStatus remoteDataStatus)
        initial,
  }) {
    return initial(financialAccountData, error, allItems, dueItems, incomeItems,
        expenseItems, remoteDataStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FinancialAccountEntity? financialAccountData,
            ErrorResponseModel? error,
            List<TransactionModel> allItems,
            List<TransactionModel> dueItems,
            List<TransactionModel> incomeItems,
            List<TransactionModel> expenseItems,
            RemoteDataStatus remoteDataStatus)?
        initial,
  }) {
    return initial?.call(financialAccountData, error, allItems, dueItems,
        incomeItems, expenseItems, remoteDataStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FinancialAccountEntity? financialAccountData,
            ErrorResponseModel? error,
            List<TransactionModel> allItems,
            List<TransactionModel> dueItems,
            List<TransactionModel> incomeItems,
            List<TransactionModel> expenseItems,
            RemoteDataStatus remoteDataStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(financialAccountData, error, allItems, dueItems,
          incomeItems, expenseItems, remoteDataStatus);
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

abstract class _Initial implements FinancialAccountsState {
  const factory _Initial(
      {final FinancialAccountEntity? financialAccountData,
      final ErrorResponseModel? error,
      final List<TransactionModel> allItems,
      final List<TransactionModel> dueItems,
      final List<TransactionModel> incomeItems,
      final List<TransactionModel> expenseItems,
      final RemoteDataStatus remoteDataStatus}) = _$InitialImpl;

  @override
  FinancialAccountEntity? get financialAccountData;
  @override
  ErrorResponseModel? get error;
  @override
  List<TransactionModel> get allItems;
  @override
  List<TransactionModel> get dueItems;
  @override
  List<TransactionModel> get incomeItems;
  @override
  List<TransactionModel> get expenseItems;
  @override
  RemoteDataStatus get remoteDataStatus;

  /// Create a copy of FinancialAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
