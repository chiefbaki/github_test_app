import 'package:dio/dio.dart';
import 'package:git_test/features/home/data/models/repos/repos_dto.dart';

class ReposUseCase {
  final Dio _dio;
  ReposUseCase({required Dio dio}) : _dio = dio;
  Future<List<ReposDto>> getRepos({required String login}) async {
    final Response response = await _dio.get("/$login/repos");
    final List<ReposDto> repos = [];
    for (var element in response.data) {
      repos.add(ReposDto.fromJson(element));
    }
    print(repos);
    return repos;
  }
}
