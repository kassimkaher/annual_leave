// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "financial_type")
  FinancialType? get financialType => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get amount => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "pay_at")
  DateTime? get payAt => throw _privateConstructorUsedError;

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? title,
      @HiveField(2) String? description,
      @HiveField(3)
      @JsonKey(name: "financial_type")
      FinancialType? financialType,
      @HiveField(4) int? amount,
      @HiveField(5) @JsonKey(name: "created_at") DateTime? createdAt,
      @HiveField(6) @JsonKey(name: "updated_at") DateTime? updatedAt,
      @HiveField(7) @JsonKey(name: "pay_at") DateTime? payAt});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? financialType = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? payAt = freezed,
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
      financialType: freezed == financialType
          ? _value.financialType
          : financialType // ignore: cast_nullable_to_non_nullable
              as FinancialType?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payAt: freezed == payAt
          ? _value.payAt
          : payAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionModelImplCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$TransactionModelImplCopyWith(_$TransactionModelImpl value,
          $Res Function(_$TransactionModelImpl) then) =
      __$$TransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? title,
      @HiveField(2) String? description,
      @HiveField(3)
      @JsonKey(name: "financial_type")
      FinancialType? financialType,
      @HiveField(4) int? amount,
      @HiveField(5) @JsonKey(name: "created_at") DateTime? createdAt,
      @HiveField(6) @JsonKey(name: "updated_at") DateTime? updatedAt,
      @HiveField(7) @JsonKey(name: "pay_at") DateTime? payAt});
}

/// @nodoc
class __$$TransactionModelImplCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$TransactionModelImpl>
    implements _$$TransactionModelImplCopyWith<$Res> {
  __$$TransactionModelImplCopyWithImpl(_$TransactionModelImpl _value,
      $Res Function(_$TransactionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? financialType = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? payAt = freezed,
  }) {
    return _then(_$TransactionModelImpl(
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
      financialType: freezed == financialType
          ? _value.financialType
          : financialType // ignore: cast_nullable_to_non_nullable
              as FinancialType?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payAt: freezed == payAt
          ? _value.payAt
          : payAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionModelImpl implements _TransactionModel {
  const _$TransactionModelImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.title,
      @HiveField(2) this.description,
      @HiveField(3) @JsonKey(name: "financial_type") this.financialType,
      @HiveField(4) this.amount,
      @HiveField(5) @JsonKey(name: "created_at") this.createdAt,
      @HiveField(6) @JsonKey(name: "updated_at") this.updatedAt,
      @HiveField(7) @JsonKey(name: "pay_at") this.payAt});

  factory _$TransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  @JsonKey(name: "financial_type")
  final FinancialType? financialType;
  @override
  @HiveField(4)
  final int? amount;
  @override
  @HiveField(5)
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @HiveField(6)
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @HiveField(7)
  @JsonKey(name: "pay_at")
  final DateTime? payAt;

  @override
  String toString() {
    return 'TransactionModel(id: $id, title: $title, description: $description, financialType: $financialType, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt, payAt: $payAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.financialType, financialType) ||
                other.financialType == financialType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.payAt, payAt) || other.payAt == payAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      financialType, amount, createdAt, updatedAt, payAt);

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      __$$TransactionModelImplCopyWithImpl<_$TransactionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
          {@HiveField(0) final int? id,
          @HiveField(1) final String? title,
          @HiveField(2) final String? description,
          @HiveField(3)
          @JsonKey(name: "financial_type")
          final FinancialType? financialType,
          @HiveField(4) final int? amount,
          @HiveField(5) @JsonKey(name: "created_at") final DateTime? createdAt,
          @HiveField(6) @JsonKey(name: "updated_at") final DateTime? updatedAt,
          @HiveField(7) @JsonKey(name: "pay_at") final DateTime? payAt}) =
      _$TransactionModelImpl;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$TransactionModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  @JsonKey(name: "financial_type")
  FinancialType? get financialType;
  @override
  @HiveField(4)
  int? get amount;
  @override
  @HiveField(5)
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @HiveField(6)
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @HiveField(7)
  @JsonKey(name: "pay_at")
  DateTime? get payAt;

  /// Create a copy of TransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
