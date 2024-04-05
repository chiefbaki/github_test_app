import 'package:git_test/features/home/data/models/users/users_dto.dart';
import 'package:git_test/features/home/domain/repositories/users_repository.dart';

class UsersUseCase {
  final UsersRepository _repository;

  UsersUseCase({required UsersRepository repository})
      : _repository = repository;

  Future<List<UsersDto>> call() async {
    return _repository.getUsers();
  }
 
}
