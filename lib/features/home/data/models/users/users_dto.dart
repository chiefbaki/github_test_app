import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_dto.freezed.dart';
part 'users_dto.g.dart';

@freezed
class UsersDto with _$UsersDto {
  const factory UsersDto(
      {required String? login,
      required String? avatar_url,
      required String? type,
      required String? name,
      required String? company,
      required String? location,
      required String? bio,
      required int? followers,
      required int? following,}) = _UsersDto;
  factory UsersDto.fromJson(Map<String, dynamic> json) =>
      _$UsersDtoFromJson(json);
}
