import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_dto.freezed.dart';
part 'users_dto.g.dart';

@freezed
class UsersDto with _$UsersDto {
  const factory UsersDto(
      {required String? login,
      required String avatar_url,
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


// {
//     "login": "chiefbaki",
//     "id": 61545789,
//     "node_id": "MDQ6VXNlcjYxNTQ1Nzg5",
//     "avatar_url": "https://avatars.githubusercontent.com/u/61545789?v=4",
//     "gravatar_id": "",
//     "url": "https://api.github.com/users/chiefbaki",
//     "html_url": "https://github.com/chiefbaki",
//     "followers_url": "https://api.github.com/users/chiefbaki/followers",
//     "following_url": "https://api.github.com/users/chiefbaki/following{/other_user}",
//     "gists_url": "https://api.github.com/users/chiefbaki/gists{/gist_id}",
//     "starred_url": "https://api.github.com/users/chiefbaki/starred{/owner}{/repo}",
//     "subscriptions_url": "https://api.github.com/users/chiefbaki/subscriptions",
//     "organizations_url": "https://api.github.com/users/chiefbaki/orgs",
//     "repos_url": "https://api.github.com/users/chiefbaki/repos",
//     "events_url": "https://api.github.com/users/chiefbaki/events{/privacy}",
//     "received_events_url": "https://api.github.com/users/chiefbaki/received_events",
//     "type": "User",
//     "site_admin": false,
//     "name": "Islam Kurbanov",
//     "company": "MIREA",
//     "blog": "",
//     "location": "Bishkek",
//     "email": null,
//     "hireable": null,
//     "bio": "flutter dev",
//     "twitter_username": null,
//     "public_repos": 37,
//     "public_gists": 0,
//     "followers": 19,
//     "following": 8,
// }