import 'package:freezed_annotation/freezed_annotation.dart';
part 'repos_dto.freezed.dart';
part 'repos_dto.g.dart';

@freezed
class ReposDto with _$ReposDto {
  const factory ReposDto(
      {required String? name,
      required String? visibility,
      required String? description,
      required String? language,
      required int? watchersCount,
      required int? forksCount,
      required int? stargazersCount,
      required Owner? login}) = _ReposDto;

  factory ReposDto.fromJson(Map<String, dynamic> json) =>
      _$ReposDtoFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({required String? login}) = _Owner;
  factory Owner.fromJson(Map<String, dynamic> json) =>
      _$OwnerFromJson(json);
}
