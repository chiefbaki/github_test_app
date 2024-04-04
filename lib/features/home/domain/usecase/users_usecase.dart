import 'package:dio/dio.dart';
import 'package:git_test/features/home/data/models/users_dto.dart';

class UsersUseCase {
  final Dio _dio;
  UsersUseCase({required Dio dio}) : _dio = dio;
  Future<List<UsersDto>> call({String user = ""}) async {
    final Response response = await _dio.get(
      '$user',
    );
    if (user != null) {
      return [UsersDto.fromJson(response.data)];
    } else {
      final List<UsersDto> users = [];
      for (var element in response.data) {
        users.add(UsersDto.fromJson(element));
      }
      return users;
    }
  }
}
