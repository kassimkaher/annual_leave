import 'package:annual_leave/src/apps/financial_accounts/data/financial_model.dart';

class TransactionEntity {
  int? id;
  String title;
  String? description;
  FinancialType financialType;
  int amount;
  DateTime? payAt;
  DateTime createdAt;

  TransactionEntity({
    this.id,
    required this.title,
    this.description,
    required this.financialType,
    required this.amount,
    this.payAt,
    required this.createdAt,
  });
  toJson() {
    return {
      'title': title,
      'description': description,
      'financial_type': financialType,
      'amount': amount,
      'pay_at': payAt,
      'created_at': createdAt,
    };
  }
}
