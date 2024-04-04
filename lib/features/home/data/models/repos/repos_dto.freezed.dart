// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repos_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReposDto _$ReposDtoFromJson(Map<String, dynamic> json) {
  return _ReposDto.fromJson(json);
}

/// @nodoc
mixin _$ReposDto {
  String? get name => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  int? get watchersCount => throw _privateConstructorUsedError;
  int? get forksCount => throw _privateConstructorUsedError;
  int? get stargazersCount => throw _privateConstructorUsedError;
  Owner? get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReposDtoCopyWith<ReposDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReposDtoCopyWith<$Res> {
  factory $ReposDtoCopyWith(ReposDto value, $Res Function(ReposDto) then) =
      _$ReposDtoCopyWithImpl<$Res, ReposDto>;
  @useResult
  $Res call(
      {String? name,
      String? visibility,
      String? description,
      String? language,
      int? watchersCount,
      int? forksCount,
      int? stargazersCount,
      Owner? login});

  $OwnerCopyWith<$Res>? get login;
}

/// @nodoc
class _$ReposDtoCopyWithImpl<$Res, $Val extends ReposDto>
    implements $ReposDtoCopyWith<$Res> {
  _$ReposDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? visibility = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
    Object? stargazersCount = freezed,
    Object? login = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      watchersCount: freezed == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Owner?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get login {
    if (_value.login == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.login!, (value) {
      return _then(_value.copyWith(login: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReposDtoImplCopyWith<$Res>
    implements $ReposDtoCopyWith<$Res> {
  factory _$$ReposDtoImplCopyWith(
          _$ReposDtoImpl value, $Res Function(_$ReposDtoImpl) then) =
      __$$ReposDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? visibility,
      String? description,
      String? language,
      int? watchersCount,
      int? forksCount,
      int? stargazersCount,
      Owner? login});

  @override
  $OwnerCopyWith<$Res>? get login;
}

/// @nodoc
class __$$ReposDtoImplCopyWithImpl<$Res>
    extends _$ReposDtoCopyWithImpl<$Res, _$ReposDtoImpl>
    implements _$$ReposDtoImplCopyWith<$Res> {
  __$$ReposDtoImplCopyWithImpl(
      _$ReposDtoImpl _value, $Res Function(_$ReposDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? visibility = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
    Object? stargazersCount = freezed,
    Object? login = freezed,
  }) {
    return _then(_$ReposDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      watchersCount: freezed == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Owner?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReposDtoImpl implements _ReposDto {
  const _$ReposDtoImpl(
      {required this.name,
      required this.visibility,
      required this.description,
      required this.language,
      required this.watchersCount,
      required this.forksCount,
      required this.stargazersCount,
      required this.login});

  factory _$ReposDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReposDtoImplFromJson(json);

  @override
  final String? name;
  @override
  final String? visibility;
  @override
  final String? description;
  @override
  final String? language;
  @override
  final int? watchersCount;
  @override
  final int? forksCount;
  @override
  final int? stargazersCount;
  @override
  final Owner? login;

  @override
  String toString() {
    return 'ReposDto(name: $name, visibility: $visibility, description: $description, language: $language, watchersCount: $watchersCount, forksCount: $forksCount, stargazersCount: $stargazersCount, login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReposDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, visibility, description,
      language, watchersCount, forksCount, stargazersCount, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReposDtoImplCopyWith<_$ReposDtoImpl> get copyWith =>
      __$$ReposDtoImplCopyWithImpl<_$ReposDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReposDtoImplToJson(
      this,
    );
  }
}

abstract class _ReposDto implements ReposDto {
  const factory _ReposDto(
      {required final String? name,
      required final String? visibility,
      required final String? description,
      required final String? language,
      required final int? watchersCount,
      required final int? forksCount,
      required final int? stargazersCount,
      required final Owner? login}) = _$ReposDtoImpl;

  factory _ReposDto.fromJson(Map<String, dynamic> json) =
      _$ReposDtoImpl.fromJson;

  @override
  String? get name;
  @override
  String? get visibility;
  @override
  String? get description;
  @override
  String? get language;
  @override
  int? get watchersCount;
  @override
  int? get forksCount;
  @override
  int? get stargazersCount;
  @override
  Owner? get login;
  @override
  @JsonKey(ignore: true)
  _$$ReposDtoImplCopyWith<_$ReposDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  String? get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call({String? login});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_value.copyWith(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? login});
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_$OwnerImpl(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl implements _Owner {
  const _$OwnerImpl({required this.login});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  final String? login;

  @override
  String toString() {
    return 'Owner(login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner({required final String? login}) = _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  String? get login;
  @override
  @JsonKey(ignore: true)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
