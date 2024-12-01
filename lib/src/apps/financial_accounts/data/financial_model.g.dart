// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FinancialTypeAdapter extends TypeAdapter<FinancialType> {
  @override
  final int typeId = 4;

  @override
  FinancialType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return FinancialType.INCOME;
      case 1:
        return FinancialType.EXPENSE;
      case 2:
        return FinancialType.DUE;
      default:
        return FinancialType.INCOME;
    }
  }

  @override
  void write(BinaryWriter writer, FinancialType obj) {
    switch (obj) {
      case FinancialType.INCOME:
        writer.writeByte(0);
        break;
      case FinancialType.EXPENSE:
        writer.writeByte(1);
        break;
      case FinancialType.DUE:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FinancialTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FinancialStatusAdapter extends TypeAdapter<FinancialStatus> {
  @override
  final int typeId = 5;

  @override
  FinancialStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return FinancialStatus.PENDING;
      case 1:
        return FinancialStatus.PAID;
      case 2:
        return FinancialStatus.CANCELED;
      default:
        return FinancialStatus.PENDING;
    }
  }

  @override
  void write(BinaryWriter writer, FinancialStatus obj) {
    switch (obj) {
      case FinancialStatus.PENDING:
        writer.writeByte(0);
        break;
      case FinancialStatus.PAID:
        writer.writeByte(1);
        break;
      case FinancialStatus.CANCELED:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FinancialStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
