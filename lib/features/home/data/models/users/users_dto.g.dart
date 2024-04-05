// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersDtoImpl _$$UsersDtoImplFromJson(Map<String, dynamic> json) =>
    _$UsersDtoImpl(
      login: json['login'] as String?,
      avatar_url: json['avatar_url'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      company: json['company'] as String?,
      location: json['location'] as String?,
      bio: json['bio'] as String?,
      followers: json['followers'] as int?,
      following: json['following'] as int?,
    );

Map<String, dynamic> _$$UsersDtoImplToJson(_$UsersDtoImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatar_url,
      'type': instance.type,
      'name': instance.name,
      'company': instance.company,
      'location': instance.location,
      'bio': instance.bio,
      'followers': instance.followers,
      'following': instance.following,
    };
