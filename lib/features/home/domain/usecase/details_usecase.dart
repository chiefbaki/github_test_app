import 'package:git_test/features/home/data/models/users/users_dto.dart';
import 'package:git_test/features/home/domain/repositories/details_repository.dart';


class DetailsUseCase {
  final DetailsRepository _repository;

  DetailsUseCase({required DetailsRepository repository})
      : _repository = repository;

  Future<UsersDto> call({required String login}) async {
    return _repository.getDetails(login: login);
  }
}
