import 'package:git_test/features/home/data/models/users/users_dto.dart';

abstract interface class DetailsRepository {
  Future<UsersDto> getDetails({required String login});
}
