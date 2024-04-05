import 'package:dio/dio.dart';
import 'package:git_test/features/home/data/models/repos/repos_dto.dart';
import 'package:git_test/features/home/domain/repositories/repos_repository.dart';


class ReposImpl implements ReposRepository {
  final Dio _dio;
  ReposImpl({required Dio dio}) : _dio = dio;

  @override
  Future<List<ReposDto>> getRepos({required String login}) async {
    final Response response = await _dio.get("/$login/repos");
    final List<ReposDto> repos = [];
    for (var element in response.data) {
      repos.add(ReposDto.fromJson(element));
    }
    return repos;
  }
}
