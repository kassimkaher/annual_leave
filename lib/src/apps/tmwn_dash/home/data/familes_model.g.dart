// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'familes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FamilesModelImpl _$$FamilesModelImplFromJson(Map<String, dynamic> json) =>
    _$FamilesModelImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Household.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FamilesModelImplToJson(_$FamilesModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      count: (json['count'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'total': instance.total,
      'pages': instance.pages,
      'page': instance.page,
      'perPage': instance.perPage,
    };

_$HouseholdImpl _$$HouseholdImplFromJson(Map<String, dynamic> json) =>
    _$HouseholdImpl(
      id: json['id'] as String,
      number: (json['number'] as num).toInt(),
      phone: json['phone'] as String,
      qrCode: json['qrCode'] as String,
      flags: json['flags'] as List<dynamic>,
      centerNumber: (json['centerNumber'] as num).toInt(),
      userId: json['userId'] as String,
      legacyHouseholdId: json['legacyHouseholdId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      registeredAt: json['registeredAt'] == null
          ? null
          : DateTime.parse(json['registeredAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      center: CenterModel.fromJson(json['center'] as Map<String, dynamic>),
      mainMember:
          MainMember.fromJson(json['mainMember'] as Map<String, dynamic>),
      count: Count.fromJson(json['_count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HouseholdImplToJson(_$HouseholdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'phone': instance.phone,
      'qrCode': instance.qrCode,
      'flags': instance.flags,
      'centerNumber': instance.centerNumber,
      'userId': instance.userId,
      'legacyHouseholdId': instance.legacyHouseholdId,
      'createdAt': instance.createdAt.toIso8601String(),
      'registeredAt': instance.registeredAt?.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'center': instance.center,
      'mainMember': instance.mainMember,
      '_count': instance.count,
    };

_$CenterModelImpl _$$CenterModelImplFromJson(Map<String, dynamic> json) =>
    _$CenterModelImpl(
      number: (json['number'] as num).toInt(),
      branch: Branch.fromJson(json['branch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CenterModelImplToJson(_$CenterModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'branch': instance.branch,
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      name: json['name'] as String,
      province: Province.fromJson(json['province'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'province': instance.province,
    };

_$ProvinceImpl _$$ProvinceImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceImpl(
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$$ProvinceImplToJson(_$ProvinceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
    };

_$MainMemberImpl _$$MainMemberImplFromJson(Map<String, dynamic> json) =>
    _$MainMemberImpl(
      nationalIdCard: json['nationalIdCard'] == null
          ? null
          : NationalIdCard.fromJson(
              json['nationalIdCard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MainMemberImplToJson(_$MainMemberImpl instance) =>
    <String, dynamic>{
      'nationalIdCard': instance.nationalIdCard,
    };

_$NationalIdCardImpl _$$NationalIdCardImplFromJson(Map<String, dynamic> json) =>
    _$NationalIdCardImpl(
      fullName: json['fullName'] as String,
    );

Map<String, dynamic> _$$NationalIdCardImplToJson(
        _$NationalIdCardImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
    };

_$CountImpl _$$CountImplFromJson(Map<String, dynamic> json) => _$CountImpl(
      members: (json['members'] as num).toInt(),
    );

Map<String, dynamic> _$$CountImplToJson(_$CountImpl instance) =>
    <String, dynamic>{
      'members': instance.members,
    };
