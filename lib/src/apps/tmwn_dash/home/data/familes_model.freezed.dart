// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'familes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FamilesModel _$FamilesModelFromJson(Map<String, dynamic> json) {
  return _FamilesModel.fromJson(json);
}

/// @nodoc
mixin _$FamilesModel {
  List<Household> get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  /// Serializes this FamilesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FamilesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FamilesModelCopyWith<FamilesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilesModelCopyWith<$Res> {
  factory $FamilesModelCopyWith(
          FamilesModel value, $Res Function(FamilesModel) then) =
      _$FamilesModelCopyWithImpl<$Res, FamilesModel>;
  @useResult
  $Res call({List<Household> data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$FamilesModelCopyWithImpl<$Res, $Val extends FamilesModel>
    implements $FamilesModelCopyWith<$Res> {
  _$FamilesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FamilesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Household>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  /// Create a copy of FamilesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FamilesModelImplCopyWith<$Res>
    implements $FamilesModelCopyWith<$Res> {
  factory _$$FamilesModelImplCopyWith(
          _$FamilesModelImpl value, $Res Function(_$FamilesModelImpl) then) =
      __$$FamilesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Household> data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$FamilesModelImplCopyWithImpl<$Res>
    extends _$FamilesModelCopyWithImpl<$Res, _$FamilesModelImpl>
    implements _$$FamilesModelImplCopyWith<$Res> {
  __$$FamilesModelImplCopyWithImpl(
      _$FamilesModelImpl _value, $Res Function(_$FamilesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FamilesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = freezed,
  }) {
    return _then(_$FamilesModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Household>,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilesModelImpl implements _FamilesModel {
  const _$FamilesModelImpl(
      {required final List<Household> data, this.pagination})
      : _data = data;

  factory _$FamilesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilesModelImplFromJson(json);

  final List<Household> _data;
  @override
  List<Household> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'FamilesModel(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilesModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  /// Create a copy of FamilesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilesModelImplCopyWith<_$FamilesModelImpl> get copyWith =>
      __$$FamilesModelImplCopyWithImpl<_$FamilesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilesModelImplToJson(
      this,
    );
  }
}

abstract class _FamilesModel implements FamilesModel {
  const factory _FamilesModel(
      {required final List<Household> data,
      final Pagination? pagination}) = _$FamilesModelImpl;

  factory _FamilesModel.fromJson(Map<String, dynamic> json) =
      _$FamilesModelImpl.fromJson;

  @override
  List<Household> get data;
  @override
  Pagination? get pagination;

  /// Create a copy of FamilesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FamilesModelImplCopyWith<_$FamilesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  int get count => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call({int count, int total, int pages, int page, int perPage});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? total = null,
    Object? pages = null,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int total, int pages, int page, int perPage});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? total = null,
    Object? pages = null,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(_$PaginationImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl(
      {required this.count,
      required this.total,
      required this.pages,
      required this.page,
      required this.perPage});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  final int count;
  @override
  final int total;
  @override
  final int pages;
  @override
  final int page;
  @override
  final int perPage;

  @override
  String toString() {
    return 'Pagination(count: $count, total: $total, pages: $pages, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, count, total, pages, page, perPage);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
      {required final int count,
      required final int total,
      required final int pages,
      required final int page,
      required final int perPage}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  int get count;
  @override
  int get total;
  @override
  int get pages;
  @override
  int get page;
  @override
  int get perPage;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Household _$HouseholdFromJson(Map<String, dynamic> json) {
  return _Household.fromJson(json);
}

/// @nodoc
mixin _$Household {
  String get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  List<dynamic> get flags => throw _privateConstructorUsedError;
  int get centerNumber => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get legacyHouseholdId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get registeredAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  CenterModel get center => throw _privateConstructorUsedError;
  MainMember get mainMember => throw _privateConstructorUsedError;
  @JsonKey(name: "_count")
  Count get count => throw _privateConstructorUsedError;

  /// Serializes this Household to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Household
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseholdCopyWith<Household> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseholdCopyWith<$Res> {
  factory $HouseholdCopyWith(Household value, $Res Function(Household) then) =
      _$HouseholdCopyWithImpl<$Res, Household>;
  @useResult
  $Res call(
      {String id,
      int number,
      String phone,
      String qrCode,
      List<dynamic> flags,
      int centerNumber,
      String userId,
      String legacyHouseholdId,
      DateTime createdAt,
      DateTime? registeredAt,
      DateTime updatedAt,
      CenterModel center,
      MainMember mainMember,
      @JsonKey(name: "_count") Count count});

  $CenterModelCopyWith<$Res> get center;
  $MainMemberCopyWith<$Res> get mainMember;
  $CountCopyWith<$Res> get count;
}

/// @nodoc
class _$HouseholdCopyWithImpl<$Res, $Val extends Household>
    implements $HouseholdCopyWith<$Res> {
  _$HouseholdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Household
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? phone = null,
    Object? qrCode = null,
    Object? flags = null,
    Object? centerNumber = null,
    Object? userId = null,
    Object? legacyHouseholdId = null,
    Object? createdAt = null,
    Object? registeredAt = freezed,
    Object? updatedAt = null,
    Object? center = null,
    Object? mainMember = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      centerNumber: null == centerNumber
          ? _value.centerNumber
          : centerNumber // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      legacyHouseholdId: null == legacyHouseholdId
          ? _value.legacyHouseholdId
          : legacyHouseholdId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      registeredAt: freezed == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as CenterModel,
      mainMember: null == mainMember
          ? _value.mainMember
          : mainMember // ignore: cast_nullable_to_non_nullable
              as MainMember,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as Count,
    ) as $Val);
  }

  /// Create a copy of Household
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CenterModelCopyWith<$Res> get center {
    return $CenterModelCopyWith<$Res>(_value.center, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }

  /// Create a copy of Household
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainMemberCopyWith<$Res> get mainMember {
    return $MainMemberCopyWith<$Res>(_value.mainMember, (value) {
      return _then(_value.copyWith(mainMember: value) as $Val);
    });
  }

  /// Create a copy of Household
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountCopyWith<$Res> get count {
    return $CountCopyWith<$Res>(_value.count, (value) {
      return _then(_value.copyWith(count: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HouseholdImplCopyWith<$Res>
    implements $HouseholdCopyWith<$Res> {
  factory _$$HouseholdImplCopyWith(
          _$HouseholdImpl value, $Res Function(_$HouseholdImpl) then) =
      __$$HouseholdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int number,
      String phone,
      String qrCode,
      List<dynamic> flags,
      int centerNumber,
      String userId,
      String legacyHouseholdId,
      DateTime createdAt,
      DateTime? registeredAt,
      DateTime updatedAt,
      CenterModel center,
      MainMember mainMember,
      @JsonKey(name: "_count") Count count});

  @override
  $CenterModelCopyWith<$Res> get center;
  @override
  $MainMemberCopyWith<$Res> get mainMember;
  @override
  $CountCopyWith<$Res> get count;
}

/// @nodoc
class __$$HouseholdImplCopyWithImpl<$Res>
    extends _$HouseholdCopyWithImpl<$Res, _$HouseholdImpl>
    implements _$$HouseholdImplCopyWith<$Res> {
  __$$HouseholdImplCopyWithImpl(
      _$HouseholdImpl _value, $Res Function(_$HouseholdImpl) _then)
      : super(_value, _then);

  /// Create a copy of Household
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? phone = null,
    Object? qrCode = null,
    Object? flags = null,
    Object? centerNumber = null,
    Object? userId = null,
    Object? legacyHouseholdId = null,
    Object? createdAt = null,
    Object? registeredAt = freezed,
    Object? updatedAt = null,
    Object? center = null,
    Object? mainMember = null,
    Object? count = null,
  }) {
    return _then(_$HouseholdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      flags: null == flags
          ? _value._flags
          : flags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      centerNumber: null == centerNumber
          ? _value.centerNumber
          : centerNumber // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      legacyHouseholdId: null == legacyHouseholdId
          ? _value.legacyHouseholdId
          : legacyHouseholdId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      registeredAt: freezed == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as CenterModel,
      mainMember: null == mainMember
          ? _value.mainMember
          : mainMember // ignore: cast_nullable_to_non_nullable
              as MainMember,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as Count,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseholdImpl implements _Household {
  const _$HouseholdImpl(
      {required this.id,
      required this.number,
      required this.phone,
      required this.qrCode,
      required final List<dynamic> flags,
      required this.centerNumber,
      required this.userId,
      required this.legacyHouseholdId,
      required this.createdAt,
      this.registeredAt,
      required this.updatedAt,
      required this.center,
      required this.mainMember,
      @JsonKey(name: "_count") required this.count})
      : _flags = flags;

  factory _$HouseholdImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseholdImplFromJson(json);

  @override
  final String id;
  @override
  final int number;
  @override
  final String phone;
  @override
  final String qrCode;
  final List<dynamic> _flags;
  @override
  List<dynamic> get flags {
    if (_flags is EqualUnmodifiableListView) return _flags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flags);
  }

  @override
  final int centerNumber;
  @override
  final String userId;
  @override
  final String legacyHouseholdId;
  @override
  final DateTime createdAt;
  @override
  final DateTime? registeredAt;
  @override
  final DateTime updatedAt;
  @override
  final CenterModel center;
  @override
  final MainMember mainMember;
  @override
  @JsonKey(name: "_count")
  final Count count;

  @override
  String toString() {
    return 'Household(id: $id, number: $number, phone: $phone, qrCode: $qrCode, flags: $flags, centerNumber: $centerNumber, userId: $userId, legacyHouseholdId: $legacyHouseholdId, createdAt: $createdAt, registeredAt: $registeredAt, updatedAt: $updatedAt, center: $center, mainMember: $mainMember, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseholdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
            (identical(other.centerNumber, centerNumber) ||
                other.centerNumber == centerNumber) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.legacyHouseholdId, legacyHouseholdId) ||
                other.legacyHouseholdId == legacyHouseholdId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.registeredAt, registeredAt) ||
                other.registeredAt == registeredAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.mainMember, mainMember) ||
                other.mainMember == mainMember) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      number,
      phone,
      qrCode,
      const DeepCollectionEquality().hash(_flags),
      centerNumber,
      userId,
      legacyHouseholdId,
      createdAt,
      registeredAt,
      updatedAt,
      center,
      mainMember,
      count);

  /// Create a copy of Household
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseholdImplCopyWith<_$HouseholdImpl> get copyWith =>
      __$$HouseholdImplCopyWithImpl<_$HouseholdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseholdImplToJson(
      this,
    );
  }
}

abstract class _Household implements Household {
  const factory _Household(
      {required final String id,
      required final int number,
      required final String phone,
      required final String qrCode,
      required final List<dynamic> flags,
      required final int centerNumber,
      required final String userId,
      required final String legacyHouseholdId,
      required final DateTime createdAt,
      final DateTime? registeredAt,
      required final DateTime updatedAt,
      required final CenterModel center,
      required final MainMember mainMember,
      @JsonKey(name: "_count") required final Count count}) = _$HouseholdImpl;

  factory _Household.fromJson(Map<String, dynamic> json) =
      _$HouseholdImpl.fromJson;

  @override
  String get id;
  @override
  int get number;
  @override
  String get phone;
  @override
  String get qrCode;
  @override
  List<dynamic> get flags;
  @override
  int get centerNumber;
  @override
  String get userId;
  @override
  String get legacyHouseholdId;
  @override
  DateTime get createdAt;
  @override
  DateTime? get registeredAt;
  @override
  DateTime get updatedAt;
  @override
  CenterModel get center;
  @override
  MainMember get mainMember;
  @override
  @JsonKey(name: "_count")
  Count get count;

  /// Create a copy of Household
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseholdImplCopyWith<_$HouseholdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CenterModel _$CenterModelFromJson(Map<String, dynamic> json) {
  return _CenterModel.fromJson(json);
}

/// @nodoc
mixin _$CenterModel {
  int get number => throw _privateConstructorUsedError;
  Branch get branch => throw _privateConstructorUsedError;

  /// Serializes this CenterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CenterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CenterModelCopyWith<CenterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterModelCopyWith<$Res> {
  factory $CenterModelCopyWith(
          CenterModel value, $Res Function(CenterModel) then) =
      _$CenterModelCopyWithImpl<$Res, CenterModel>;
  @useResult
  $Res call({int number, Branch branch});

  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class _$CenterModelCopyWithImpl<$Res, $Val extends CenterModel>
    implements $CenterModelCopyWith<$Res> {
  _$CenterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CenterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? branch = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch,
    ) as $Val);
  }

  /// Create a copy of CenterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res> get branch {
    return $BranchCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CenterModelImplCopyWith<$Res>
    implements $CenterModelCopyWith<$Res> {
  factory _$$CenterModelImplCopyWith(
          _$CenterModelImpl value, $Res Function(_$CenterModelImpl) then) =
      __$$CenterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, Branch branch});

  @override
  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class __$$CenterModelImplCopyWithImpl<$Res>
    extends _$CenterModelCopyWithImpl<$Res, _$CenterModelImpl>
    implements _$$CenterModelImplCopyWith<$Res> {
  __$$CenterModelImplCopyWithImpl(
      _$CenterModelImpl _value, $Res Function(_$CenterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CenterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? branch = null,
  }) {
    return _then(_$CenterModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterModelImpl implements _CenterModel {
  const _$CenterModelImpl({required this.number, required this.branch});

  factory _$CenterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterModelImplFromJson(json);

  @override
  final int number;
  @override
  final Branch branch;

  @override
  String toString() {
    return 'CenterModel(number: $number, branch: $branch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, branch);

  /// Create a copy of CenterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterModelImplCopyWith<_$CenterModelImpl> get copyWith =>
      __$$CenterModelImplCopyWithImpl<_$CenterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterModelImplToJson(
      this,
    );
  }
}

abstract class _CenterModel implements CenterModel {
  const factory _CenterModel(
      {required final int number,
      required final Branch branch}) = _$CenterModelImpl;

  factory _CenterModel.fromJson(Map<String, dynamic> json) =
      _$CenterModelImpl.fromJson;

  @override
  int get number;
  @override
  Branch get branch;

  /// Create a copy of CenterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CenterModelImplCopyWith<_$CenterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _Branch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  String get name => throw _privateConstructorUsedError;
  Province get province => throw _privateConstructorUsedError;

  /// Serializes this Branch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call({String name, Province province});

  $ProvinceCopyWith<$Res> get province;
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? province = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province,
    ) as $Val);
  }

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinceCopyWith<$Res> get province {
    return $ProvinceCopyWith<$Res>(_value.province, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BranchImplCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
          _$BranchImpl value, $Res Function(_$BranchImpl) then) =
      __$$BranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Province province});

  @override
  $ProvinceCopyWith<$Res> get province;
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
      _$BranchImpl _value, $Res Function(_$BranchImpl) _then)
      : super(_value, _then);

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? province = null,
  }) {
    return _then(_$BranchImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Province,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchImpl implements _Branch {
  const _$BranchImpl({required this.name, required this.province});

  factory _$BranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchImplFromJson(json);

  @override
  final String name;
  @override
  final Province province;

  @override
  String toString() {
    return 'Branch(name: $name, province: $province)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, province);

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchImplToJson(
      this,
    );
  }
}

abstract class _Branch implements Branch {
  const factory _Branch(
      {required final String name,
      required final Province province}) = _$BranchImpl;

  factory _Branch.fromJson(Map<String, dynamic> json) = _$BranchImpl.fromJson;

  @override
  String get name;
  @override
  Province get province;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Province _$ProvinceFromJson(Map<String, dynamic> json) {
  return _Province.fromJson(json);
}

/// @nodoc
mixin _$Province {
  String get name => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  /// Serializes this Province to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res, Province>;
  @useResult
  $Res call({String name, int number});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res, $Val extends Province>
    implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvinceImplCopyWith<$Res>
    implements $ProvinceCopyWith<$Res> {
  factory _$$ProvinceImplCopyWith(
          _$ProvinceImpl value, $Res Function(_$ProvinceImpl) then) =
      __$$ProvinceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int number});
}

/// @nodoc
class __$$ProvinceImplCopyWithImpl<$Res>
    extends _$ProvinceCopyWithImpl<$Res, _$ProvinceImpl>
    implements _$$ProvinceImplCopyWith<$Res> {
  __$$ProvinceImplCopyWithImpl(
      _$ProvinceImpl _value, $Res Function(_$ProvinceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_$ProvinceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvinceImpl implements _Province {
  const _$ProvinceImpl({required this.name, required this.number});

  factory _$ProvinceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceImplFromJson(json);

  @override
  final String name;
  @override
  final int number;

  @override
  String toString() {
    return 'Province(name: $name, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, number);

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      __$$ProvinceImplCopyWithImpl<_$ProvinceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceImplToJson(
      this,
    );
  }
}

abstract class _Province implements Province {
  const factory _Province(
      {required final String name, required final int number}) = _$ProvinceImpl;

  factory _Province.fromJson(Map<String, dynamic> json) =
      _$ProvinceImpl.fromJson;

  @override
  String get name;
  @override
  int get number;

  /// Create a copy of Province
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainMember _$MainMemberFromJson(Map<String, dynamic> json) {
  return _MainMember.fromJson(json);
}

/// @nodoc
mixin _$MainMember {
  NationalIdCard? get nationalIdCard => throw _privateConstructorUsedError;

  /// Serializes this MainMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainMemberCopyWith<MainMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainMemberCopyWith<$Res> {
  factory $MainMemberCopyWith(
          MainMember value, $Res Function(MainMember) then) =
      _$MainMemberCopyWithImpl<$Res, MainMember>;
  @useResult
  $Res call({NationalIdCard? nationalIdCard});

  $NationalIdCardCopyWith<$Res>? get nationalIdCard;
}

/// @nodoc
class _$MainMemberCopyWithImpl<$Res, $Val extends MainMember>
    implements $MainMemberCopyWith<$Res> {
  _$MainMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nationalIdCard = freezed,
  }) {
    return _then(_value.copyWith(
      nationalIdCard: freezed == nationalIdCard
          ? _value.nationalIdCard
          : nationalIdCard // ignore: cast_nullable_to_non_nullable
              as NationalIdCard?,
    ) as $Val);
  }

  /// Create a copy of MainMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NationalIdCardCopyWith<$Res>? get nationalIdCard {
    if (_value.nationalIdCard == null) {
      return null;
    }

    return $NationalIdCardCopyWith<$Res>(_value.nationalIdCard!, (value) {
      return _then(_value.copyWith(nationalIdCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainMemberImplCopyWith<$Res>
    implements $MainMemberCopyWith<$Res> {
  factory _$$MainMemberImplCopyWith(
          _$MainMemberImpl value, $Res Function(_$MainMemberImpl) then) =
      __$$MainMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NationalIdCard? nationalIdCard});

  @override
  $NationalIdCardCopyWith<$Res>? get nationalIdCard;
}

/// @nodoc
class __$$MainMemberImplCopyWithImpl<$Res>
    extends _$MainMemberCopyWithImpl<$Res, _$MainMemberImpl>
    implements _$$MainMemberImplCopyWith<$Res> {
  __$$MainMemberImplCopyWithImpl(
      _$MainMemberImpl _value, $Res Function(_$MainMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nationalIdCard = freezed,
  }) {
    return _then(_$MainMemberImpl(
      nationalIdCard: freezed == nationalIdCard
          ? _value.nationalIdCard
          : nationalIdCard // ignore: cast_nullable_to_non_nullable
              as NationalIdCard?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainMemberImpl implements _MainMember {
  const _$MainMemberImpl({this.nationalIdCard});

  factory _$MainMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainMemberImplFromJson(json);

  @override
  final NationalIdCard? nationalIdCard;

  @override
  String toString() {
    return 'MainMember(nationalIdCard: $nationalIdCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainMemberImpl &&
            (identical(other.nationalIdCard, nationalIdCard) ||
                other.nationalIdCard == nationalIdCard));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nationalIdCard);

  /// Create a copy of MainMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainMemberImplCopyWith<_$MainMemberImpl> get copyWith =>
      __$$MainMemberImplCopyWithImpl<_$MainMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainMemberImplToJson(
      this,
    );
  }
}

abstract class _MainMember implements MainMember {
  const factory _MainMember({final NationalIdCard? nationalIdCard}) =
      _$MainMemberImpl;

  factory _MainMember.fromJson(Map<String, dynamic> json) =
      _$MainMemberImpl.fromJson;

  @override
  NationalIdCard? get nationalIdCard;

  /// Create a copy of MainMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainMemberImplCopyWith<_$MainMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NationalIdCard _$NationalIdCardFromJson(Map<String, dynamic> json) {
  return _NationalIdCard.fromJson(json);
}

/// @nodoc
mixin _$NationalIdCard {
  String get fullName => throw _privateConstructorUsedError;

  /// Serializes this NationalIdCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NationalIdCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NationalIdCardCopyWith<NationalIdCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NationalIdCardCopyWith<$Res> {
  factory $NationalIdCardCopyWith(
          NationalIdCard value, $Res Function(NationalIdCard) then) =
      _$NationalIdCardCopyWithImpl<$Res, NationalIdCard>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class _$NationalIdCardCopyWithImpl<$Res, $Val extends NationalIdCard>
    implements $NationalIdCardCopyWith<$Res> {
  _$NationalIdCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NationalIdCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NationalIdCardImplCopyWith<$Res>
    implements $NationalIdCardCopyWith<$Res> {
  factory _$$NationalIdCardImplCopyWith(_$NationalIdCardImpl value,
          $Res Function(_$NationalIdCardImpl) then) =
      __$$NationalIdCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$NationalIdCardImplCopyWithImpl<$Res>
    extends _$NationalIdCardCopyWithImpl<$Res, _$NationalIdCardImpl>
    implements _$$NationalIdCardImplCopyWith<$Res> {
  __$$NationalIdCardImplCopyWithImpl(
      _$NationalIdCardImpl _value, $Res Function(_$NationalIdCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of NationalIdCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$NationalIdCardImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NationalIdCardImpl implements _NationalIdCard {
  const _$NationalIdCardImpl({required this.fullName});

  factory _$NationalIdCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$NationalIdCardImplFromJson(json);

  @override
  final String fullName;

  @override
  String toString() {
    return 'NationalIdCard(fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NationalIdCardImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  /// Create a copy of NationalIdCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NationalIdCardImplCopyWith<_$NationalIdCardImpl> get copyWith =>
      __$$NationalIdCardImplCopyWithImpl<_$NationalIdCardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NationalIdCardImplToJson(
      this,
    );
  }
}

abstract class _NationalIdCard implements NationalIdCard {
  const factory _NationalIdCard({required final String fullName}) =
      _$NationalIdCardImpl;

  factory _NationalIdCard.fromJson(Map<String, dynamic> json) =
      _$NationalIdCardImpl.fromJson;

  @override
  String get fullName;

  /// Create a copy of NationalIdCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NationalIdCardImplCopyWith<_$NationalIdCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Count _$CountFromJson(Map<String, dynamic> json) {
  return _Count.fromJson(json);
}

/// @nodoc
mixin _$Count {
  int get members => throw _privateConstructorUsedError;

  /// Serializes this Count to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Count
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountCopyWith<Count> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountCopyWith<$Res> {
  factory $CountCopyWith(Count value, $Res Function(Count) then) =
      _$CountCopyWithImpl<$Res, Count>;
  @useResult
  $Res call({int members});
}

/// @nodoc
class _$CountCopyWithImpl<$Res, $Val extends Count>
    implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Count
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountImplCopyWith<$Res> implements $CountCopyWith<$Res> {
  factory _$$CountImplCopyWith(
          _$CountImpl value, $Res Function(_$CountImpl) then) =
      __$$CountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int members});
}

/// @nodoc
class __$$CountImplCopyWithImpl<$Res>
    extends _$CountCopyWithImpl<$Res, _$CountImpl>
    implements _$$CountImplCopyWith<$Res> {
  __$$CountImplCopyWithImpl(
      _$CountImpl _value, $Res Function(_$CountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Count
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_$CountImpl(
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountImpl implements _Count {
  const _$CountImpl({required this.members});

  factory _$CountImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountImplFromJson(json);

  @override
  final int members;

  @override
  String toString() {
    return 'Count(members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountImpl &&
            (identical(other.members, members) || other.members == members));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, members);

  /// Create a copy of Count
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      __$$CountImplCopyWithImpl<_$CountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountImplToJson(
      this,
    );
  }
}

abstract class _Count implements Count {
  const factory _Count({required final int members}) = _$CountImpl;

  factory _Count.fromJson(Map<String, dynamic> json) = _$CountImpl.fromJson;

  @override
  int get members;

  /// Create a copy of Count
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
