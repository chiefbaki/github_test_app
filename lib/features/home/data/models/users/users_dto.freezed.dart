// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersDto _$UsersDtoFromJson(Map<String, dynamic> json) {
  return _UsersDto.fromJson(json);
}

/// @nodoc
mixin _$UsersDto {
  String? get login => throw _privateConstructorUsedError;
  String get avatar_url => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;
  int? get following => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersDtoCopyWith<UsersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersDtoCopyWith<$Res> {
  factory $UsersDtoCopyWith(UsersDto value, $Res Function(UsersDto) then) =
      _$UsersDtoCopyWithImpl<$Res, UsersDto>;
  @useResult
  $Res call(
      {String? login,
      String avatar_url,
      String? type,
      String? name,
      String? company,
      String? location,
      String? bio,
      int? followers,
      int? following});
}

/// @nodoc
class _$UsersDtoCopyWithImpl<$Res, $Val extends UsersDto>
    implements $UsersDtoCopyWith<$Res> {
  _$UsersDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? avatar_url = null,
    Object? type = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? followers = freezed,
    Object? following = freezed,
  }) {
    return _then(_value.copyWith(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: null == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersDtoImplCopyWith<$Res>
    implements $UsersDtoCopyWith<$Res> {
  factory _$$UsersDtoImplCopyWith(
          _$UsersDtoImpl value, $Res Function(_$UsersDtoImpl) then) =
      __$$UsersDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? login,
      String avatar_url,
      String? type,
      String? name,
      String? company,
      String? location,
      String? bio,
      int? followers,
      int? following});
}

/// @nodoc
class __$$UsersDtoImplCopyWithImpl<$Res>
    extends _$UsersDtoCopyWithImpl<$Res, _$UsersDtoImpl>
    implements _$$UsersDtoImplCopyWith<$Res> {
  __$$UsersDtoImplCopyWithImpl(
      _$UsersDtoImpl _value, $Res Function(_$UsersDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? avatar_url = null,
    Object? type = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? followers = freezed,
    Object? following = freezed,
  }) {
    return _then(_$UsersDtoImpl(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar_url: null == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersDtoImpl implements _UsersDto {
  const _$UsersDtoImpl(
      {required this.login,
      required this.avatar_url,
      required this.type,
      required this.name,
      required this.company,
      required this.location,
      required this.bio,
      required this.followers,
      required this.following});

  factory _$UsersDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersDtoImplFromJson(json);

  @override
  final String? login;
  @override
  final String avatar_url;
  @override
  final String? type;
  @override
  final String? name;
  @override
  final String? company;
  @override
  final String? location;
  @override
  final String? bio;
  @override
  final int? followers;
  @override
  final int? following;

  @override
  String toString() {
    return 'UsersDto(login: $login, avatar_url: $avatar_url, type: $type, name: $name, company: $company, location: $location, bio: $bio, followers: $followers, following: $following)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersDtoImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatar_url, avatar_url) ||
                other.avatar_url == avatar_url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatar_url, type, name,
      company, location, bio, followers, following);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersDtoImplCopyWith<_$UsersDtoImpl> get copyWith =>
      __$$UsersDtoImplCopyWithImpl<_$UsersDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersDtoImplToJson(
      this,
    );
  }
}

abstract class _UsersDto implements UsersDto {
  const factory _UsersDto(
      {required final String? login,
      required final String avatar_url,
      required final String? type,
      required final String? name,
      required final String? company,
      required final String? location,
      required final String? bio,
      required final int? followers,
      required final int? following}) = _$UsersDtoImpl;

  factory _UsersDto.fromJson(Map<String, dynamic> json) =
      _$UsersDtoImpl.fromJson;

  @override
  String? get login;
  @override
  String get avatar_url;
  @override
  String? get type;
  @override
  String? get name;
  @override
  String? get company;
  @override
  String? get location;
  @override
  String? get bio;
  @override
  int? get followers;
  @override
  int? get following;
  @override
  @JsonKey(ignore: true)
  _$$UsersDtoImplCopyWith<_$UsersDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
