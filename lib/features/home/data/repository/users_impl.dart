import 'package:git_test/features/home/data/models/users_dto.dart';
import 'package:git_test/features/home/domain/repository/users_repository.dart';

class UsersImpl implements UsersRepository {
  @override
  Future<List<UsersDto>> getUsers() {
    throw UnimplementedError();
  }
}
