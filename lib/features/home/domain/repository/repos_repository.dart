import 'package:git_test/features/home/data/models/repos/repos_dto.dart';

abstract interface class ReposRepository{
  Future<List<ReposDto>> getRepos({required String login});
}