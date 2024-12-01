// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financial_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinancialAccountEntity {
  int get amount => throw _privateConstructorUsedError;
  int get expense => throw _privateConstructorUsedError;
  int get due => throw _privateConstructorUsedError;

  /// Create a copy of FinancialAccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancialAccountEntityCopyWith<FinancialAccountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialAccountEntityCopyWith<$Res> {
  factory $FinancialAccountEntityCopyWith(FinancialAccountEntity value,
          $Res Function(FinancialAccountEntity) then) =
      _$FinancialAccountEntityCopyWithImpl<$Res, FinancialAccountEntity>;
  @useResult
  $Res call({int amount, int expense, int due});
}

/// @nodoc
class _$FinancialAccountEntityCopyWithImpl<$Res,
        $Val extends FinancialAccountEntity>
    implements $FinancialAccountEntityCopyWith<$Res> {
  _$FinancialAccountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinancialAccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? expense = null,
    Object? due = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as int,
      due: null == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancialAccountEntityImplCopyWith<$Res>
    implements $FinancialAccountEntityCopyWith<$Res> {
  factory _$$FinancialAccountEntityImplCopyWith(
          _$FinancialAccountEntityImpl value,
          $Res Function(_$FinancialAccountEntityImpl) then) =
      __$$FinancialAccountEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, int expense, int due});
}

/// @nodoc
class __$$FinancialAccountEntityImplCopyWithImpl<$Res>
    extends _$FinancialAccountEntityCopyWithImpl<$Res,
        _$FinancialAccountEntityImpl>
    implements _$$FinancialAccountEntityImplCopyWith<$Res> {
  __$$FinancialAccountEntityImplCopyWithImpl(
      _$FinancialAccountEntityImpl _value,
      $Res Function(_$FinancialAccountEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinancialAccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? expense = null,
    Object? due = null,
  }) {
    return _then(_$FinancialAccountEntityImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as int,
      due: null == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FinancialAccountEntityImpl implements _FinancialAccountEntity {
  const _$FinancialAccountEntityImpl(
      {this.amount = 0, this.expense = 0, this.due = 0});

  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final int expense;
  @override
  @JsonKey()
  final int due;

  @override
  String toString() {
    return 'FinancialAccountEntity(amount: $amount, expense: $expense, due: $due)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialAccountEntityImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.due, due) || other.due == due));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, expense, due);

  /// Create a copy of FinancialAccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialAccountEntityImplCopyWith<_$FinancialAccountEntityImpl>
      get copyWith => __$$FinancialAccountEntityImplCopyWithImpl<
          _$FinancialAccountEntityImpl>(this, _$identity);
}

abstract class _FinancialAccountEntity implements FinancialAccountEntity {
  const factory _FinancialAccountEntity(
      {final int amount,
      final int expense,
      final int due}) = _$FinancialAccountEntityImpl;

  @override
  int get amount;
  @override
  int get expense;
  @override
  int get due;

  /// Create a copy of FinancialAccountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinancialAccountEntityImplCopyWith<_$FinancialAccountEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
