// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginCridential _$LoginCridentialFromJson(Map<String, dynamic> json) {
  return _LoginCridential.fromJson(json);
}

/// @nodoc
mixin _$LoginCridential {
  String? get token => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get grafanaToken => throw _privateConstructorUsedError;

  /// Serializes this LoginCridential to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginCridential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginCridentialCopyWith<LoginCridential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCridentialCopyWith<$Res> {
  factory $LoginCridentialCopyWith(
          LoginCridential value, $Res Function(LoginCridential) then) =
      _$LoginCridentialCopyWithImpl<$Res, LoginCridential>;
  @useResult
  $Res call(
      {String? token,
      String? email,
      String? refreshToken,
      String? grafanaToken});
}

/// @nodoc
class _$LoginCridentialCopyWithImpl<$Res, $Val extends LoginCridential>
    implements $LoginCridentialCopyWith<$Res> {
  _$LoginCridentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginCridential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? email = freezed,
    Object? refreshToken = freezed,
    Object? grafanaToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      grafanaToken: freezed == grafanaToken
          ? _value.grafanaToken
          : grafanaToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginCridentialImplCopyWith<$Res>
    implements $LoginCridentialCopyWith<$Res> {
  factory _$$LoginCridentialImplCopyWith(_$LoginCridentialImpl value,
          $Res Function(_$LoginCridentialImpl) then) =
      __$$LoginCridentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? token,
      String? email,
      String? refreshToken,
      String? grafanaToken});
}

/// @nodoc
class __$$LoginCridentialImplCopyWithImpl<$Res>
    extends _$LoginCridentialCopyWithImpl<$Res, _$LoginCridentialImpl>
    implements _$$LoginCridentialImplCopyWith<$Res> {
  __$$LoginCridentialImplCopyWithImpl(
      _$LoginCridentialImpl _value, $Res Function(_$LoginCridentialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginCridential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? email = freezed,
    Object? refreshToken = freezed,
    Object? grafanaToken = freezed,
  }) {
    return _then(_$LoginCridentialImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      grafanaToken: freezed == grafanaToken
          ? _value.grafanaToken
          : grafanaToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginCridentialImpl implements _LoginCridential {
  const _$LoginCridentialImpl(
      {this.token, this.email, this.refreshToken, this.grafanaToken});

  factory _$LoginCridentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginCridentialImplFromJson(json);

  @override
  final String? token;
  @override
  final String? email;
  @override
  final String? refreshToken;
  @override
  final String? grafanaToken;

  @override
  String toString() {
    return 'LoginCridential(token: $token, email: $email, refreshToken: $refreshToken, grafanaToken: $grafanaToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCridentialImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.grafanaToken, grafanaToken) ||
                other.grafanaToken == grafanaToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, email, refreshToken, grafanaToken);

  /// Create a copy of LoginCridential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCridentialImplCopyWith<_$LoginCridentialImpl> get copyWith =>
      __$$LoginCridentialImplCopyWithImpl<_$LoginCridentialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginCridentialImplToJson(
      this,
    );
  }
}

abstract class _LoginCridential implements LoginCridential {
  const factory _LoginCridential(
      {final String? token,
      final String? email,
      final String? refreshToken,
      final String? grafanaToken}) = _$LoginCridentialImpl;

  factory _LoginCridential.fromJson(Map<String, dynamic> json) =
      _$LoginCridentialImpl.fromJson;

  @override
  String? get token;
  @override
  String? get email;
  @override
  String? get refreshToken;
  @override
  String? get grafanaToken;

  /// Create a copy of LoginCridential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginCridentialImplCopyWith<_$LoginCridentialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
