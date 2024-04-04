import 'package:git_test/features/home/data/models/users/users_dto.dart';
import 'package:git_test/features/home/domain/repository/users_repository.dart';
import 'package:git_test/features/home/domain/usecase/users_usecase.dart';

class UsersImpl implements UsersRepository {
  final UsersUseCase _useCase;
  UsersImpl({required UsersUseCase useCase}) : _useCase = useCase;
  @override
  Future<List<UsersDto>> getUsers() async{
    return await _useCase.getUsers();
  }
  
  @override
  Future<UsersDto> getDetails({required String login}) async{
    return await _useCase.getDetail(login: login);
  }
}
