import 'package:dio/dio.dart';
import 'package:git_test/features/home/data/models/users/users_dto.dart';
import 'package:git_test/features/home/domain/repositories/users_repository.dart';

class UsersImpl implements UsersRepository {
  final Dio _dio;

  UsersImpl({required Dio dio}) : _dio = dio;

  @override
  Future<List<UsersDto>> getUsers() async {
    final Response response = await _dio.get(
      "",
    );

    final List<UsersDto> users = [];
    for (var element in response.data) {
      users.add(UsersDto.fromJson(element));
    }
    return users;
  }
  // final UsersUseCase _useCase;
  // UsersImpl({required UsersUseCase useCase}) : _useCase = useCase;
  // @override
  // Future<List<UsersDto>> getUsers() async{
  //   return await _useCase.getUsers();
  // }

  // @override
  // Future<UsersDto> getDetails({required String login}) async{
  //   return await _useCase.getDetail(login: login);
  // }
}
