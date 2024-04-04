import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_test/features/home/data/models/users/users_dto.dart';
import 'package:git_test/features/home/domain/repository/users_repository.dart';
part 'users_state.dart';
part 'users_cubit.freezed.dart';

class UsersCubit extends Cubit<UsersState> {
  final UsersRepository _repository;
  UsersCubit({required UsersRepository repository})
      : _repository = repository,
        super(const UsersState.initial());
  Future<void> getUsers() async {
    emit(const UsersState.loading());
    try {
      final List<UsersDto> users = await _repository.getUsers();
      emit(UsersState.success(users: users));
    } catch (e) {
      emit(UsersState.failure(error: e.toString()));
    }
  }

}
