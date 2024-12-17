// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginCridentialImpl _$$LoginCridentialImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginCridentialImpl(
      token: json['token'] as String?,
      email: json['email'] as String?,
      refreshToken: json['refreshToken'] as String?,
      grafanaToken: json['grafanaToken'] as String?,
    );

Map<String, dynamic> _$$LoginCridentialImplToJson(
        _$LoginCridentialImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'email': instance.email,
      'refreshToken': instance.refreshToken,
      'grafanaToken': instance.grafanaToken,
    };
