import 'package:hive/hive.dart';

part 'financial_model.g.dart';

// @HiveType(typeId: 1)
// class ExpenseItemModel {
//   @HiveField(0)
//   DateTime createdAt;
//   @HiveField(1)
//   DateTime? payAt;
//   @HiveField(2)
//   int amount;
//   @HiveField(3)
//   FinancialStatus status;
//   @HiveField(4)
//   FinancialType type;
//   @HiveField(5)
//   String title;
//   @HiveField(6)
//   String? subTitle;

//   ExpenseItemModel({
//     required this.createdAt,
//     this.payAt,
//     required this.amount,
//     required this.status,
//     required this.type,
//     required this.title,
//     this.subTitle,
//   });
// }

// @HiveType(typeId: 3)
// class ExpenseModel {
//   @HiveField(0)
//   List<ExpenseItemModel> expenses;

//   ExpenseModel({
//     required this.expenses,
//   });
// }

@HiveType(typeId: 4)
enum FinancialType {
  @HiveField(0)
  INCOME,
  @HiveField(1)
  EXPENSE,
  @HiveField(2)
  DUE
}

@HiveType(typeId: 5) // Assign a unique `typeId` for this enum
enum FinancialStatus {
  @HiveField(0)
  PENDING,

  @HiveField(1)
  PAID,

  @HiveField(2)
  CANCELED,
}
