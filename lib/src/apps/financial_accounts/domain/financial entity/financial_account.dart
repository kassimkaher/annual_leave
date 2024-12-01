import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_account.freezed.dart';

@freezed
class FinancialAccountEntity with _$FinancialAccountEntity {
  const factory FinancialAccountEntity(
      {@Default(0) int amount,
      @Default(0) int expense,
      @Default(0) int due}) = _FinancialAccountEntity;
}
