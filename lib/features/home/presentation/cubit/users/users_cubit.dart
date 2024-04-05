import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_test/features/home/data/models/users/users_dto.dart';
import 'package:git_test/features/home/domain/usecase/users_usecase.dart';
part 'users_state.dart';
part 'users_cubit.freezed.dart';

class UsersCubit extends Cubit<UsersState> {
  final UsersUseCase _useCase;
  UsersCubit({required UsersUseCase useCase})
      : _useCase = useCase,
        super(const UsersState.initial());
  Future<void> getUsers() async {
    emit(const UsersState.loading());
    try {
      final List<UsersDto> users = await _useCase();
      emit(UsersState.success(users: users));
    } catch (e) {
      emit(UsersState.failure(error: e.toString()));
    }
  }
}
