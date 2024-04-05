import 'package:git_test/features/home/data/models/repos/repos_dto.dart';
import 'package:git_test/features/home/domain/repositories/repos_repository.dart';

class ReposUseCase {
  final ReposRepository _reposRepository;

  ReposUseCase({required ReposRepository reposRepository})
      : _reposRepository = reposRepository;

  Future<List<ReposDto>> call({required String login}) async {
    return await _reposRepository.getRepos(login: login);
  }
}
