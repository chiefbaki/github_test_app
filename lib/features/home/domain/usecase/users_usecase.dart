import 'package:dio/dio.dart';
import 'package:git_test/features/home/data/models/users_dto.dart';

class UsersUseCase {
  final Dio _dio;
  UsersUseCase({required Dio dio}) : _dio = dio;
  Future<List<UsersDto>> call() async {
    final Response response = await _dio.get("");
    return response.data;
  }
}
