import 'package:freezed_annotation/freezed_annotation.dart';

part 'familes_model.freezed.dart';
part 'familes_model.g.dart';

@freezed
class FamilesModel with _$FamilesModel {
  const factory FamilesModel(
      {required List<Household> data, Pagination? pagination}) = _FamilesModel;

  factory FamilesModel.fromJson(Map<String, dynamic> json) =>
      _$FamilesModelFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    required int count,
    required int total,
    required int pages,
    required int page,
    required int perPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
class Household with _$Household {
  const factory Household({
    required String id,
    required int number,
    required String phone,
    required String qrCode,
    required List<dynamic> flags,
    required int centerNumber,
    required String userId,
    required String legacyHouseholdId,
    required DateTime createdAt,
    DateTime? registeredAt,
    required DateTime updatedAt,
    required CenterModel center,
    required MainMember mainMember,
    @JsonKey(name: "_count") required Count count,
  }) = _Household;

  factory Household.fromJson(Map<String, dynamic> json) =>
      _$HouseholdFromJson(json);
}

@freezed
class CenterModel with _$CenterModel {
  const factory CenterModel({
    required int number,
    required Branch branch,
  }) = _CenterModel;

  factory CenterModel.fromJson(Map<String, dynamic> json) =>
      _$CenterModelFromJson(json);
}

@freezed
class Branch with _$Branch {
  const factory Branch({
    required String name,
    required Province province,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}

@freezed
class Province with _$Province {
  const factory Province({
    required String name,
    required int number,
  }) = _Province;

  factory Province.fromJson(Map<String, dynamic> json) =>
      _$ProvinceFromJson(json);
}

@freezed
class MainMember with _$MainMember {
  const factory MainMember({
    NationalIdCard? nationalIdCard,
  }) = _MainMember;

  factory MainMember.fromJson(Map<String, dynamic> json) =>
      _$MainMemberFromJson(json);
}

@freezed
class NationalIdCard with _$NationalIdCard {
  const factory NationalIdCard({
    required String fullName,
  }) = _NationalIdCard;

  factory NationalIdCard.fromJson(Map<String, dynamic> json) =>
      _$NationalIdCardFromJson(json);
}

@freezed
class Count with _$Count {
  const factory Count({
    required int members,
  }) = _Count;

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}
