import 'package:dio/dio.dart';
import 'package:git_test/features/home/data/models/users/users_dto.dart';
import 'package:git_test/features/home/domain/repositories/details_repository.dart';


class DetailsImpl implements DetailsRepository {
  final Dio _dio;

  DetailsImpl({required Dio dio}) : _dio = dio;

  @override
  Future<UsersDto> getDetails({required String login}) async {
    final Response response = await _dio.get("/$login");
    return UsersDto.fromJson(response.data);
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
