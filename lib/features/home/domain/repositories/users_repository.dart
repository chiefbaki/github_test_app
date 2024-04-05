import 'package:git_test/features/home/data/models/users/users_dto.dart';

abstract interface class UsersRepository {
  Future<List<UsersDto>> getUsers();
}
