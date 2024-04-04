import 'package:git_test/features/home/data/models/repos/repos_dto.dart';
import 'package:git_test/features/home/domain/repository/repos_repository.dart';
import 'package:git_test/features/home/domain/usecase/repos_usecase.dart';

class ReposImpl implements ReposRepository {
  final ReposUseCase _useCase;
  ReposImpl({required ReposUseCase useCase}) : _useCase = useCase;
  @override
  Future<List<ReposDto>> getRepos({required String login}) async {
    return await _useCase.getRepos(login: login);
  }
}
