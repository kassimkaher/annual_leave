import 'dart:convert';

import 'package:annual_leave/src/apps/financial_accounts/data/financial_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

List<TransactionModel> transactionModelFromJson([dynamic str]) =>
    List<TransactionModel>.from(str.map((x) => TransactionModel.fromJson(x)));

String transactionModelToJson(List<TransactionModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
@HiveType(typeId: 1)
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @HiveField(0) int? id,
    @HiveField(1) String? title,
    @HiveField(2) String? description,
    @HiveField(3) @JsonKey(name: "financial_type") FinancialType? financialType,
    @HiveField(4) int? amount,
    @HiveField(5) @JsonKey(name: "created_at") DateTime? createdAt,
    @HiveField(6) @JsonKey(name: "updated_at") DateTime? updatedAt,
    @HiveField(7) @JsonKey(name: "pay_at") DateTime? payAt,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
