// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersDtoImpl _$$UsersDtoImplFromJson(Map<String, dynamic> json) =>
    _$UsersDtoImpl(
      login: json['login'] as String,
      avatar: json['avatar'] as String,
      followers: json['followers'] as String,
    );

Map<String, dynamic> _$$UsersDtoImplToJson(_$UsersDtoImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar': instance.avatar,
      'followers': instance.followers,
    };