// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReposDtoImpl _$$ReposDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReposDtoImpl(
      name: json['name'] as String?,
      visibility: json['visibility'] as String?,
      description: json['description'] as String?,
      language: json['language'] as String?,
      watchersCount: json['watchersCount'] as int?,
      forksCount: json['forksCount'] as int?,
      stargazersCount: json['stargazersCount'] as int?,
      login: json['login'] == null
          ? null
          : Owner.fromJson(json['login'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReposDtoImplToJson(_$ReposDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'visibility': instance.visibility,
      'description': instance.description,
      'language': instance.language,
      'watchersCount': instance.watchersCount,
      'forksCount': instance.forksCount,
      'stargazersCount': instance.stargazersCount,
      'login': instance.login,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      login: json['login'] as String?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
    };
