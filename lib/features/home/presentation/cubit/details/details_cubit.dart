import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_test/features/home/data/models/users/users_dto.dart';
import 'package:git_test/features/home/domain/repository/users_repository.dart';


part 'details_state.dart';
part 'details_cubit.freezed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final UsersRepository _repository;
  DetailsCubit({required UsersRepository repository})
      : _repository = repository,
        super(const DetailsState.initial());

  Future<void> getDetails({required String login}) async {
    emit(const DetailsState.loading());
    try {
      final UsersDto details = await _repository.getDetails(login: login);
      emit(DetailsState.success(details: details));
    } catch (e) {
      emit(DetailsState.failure(error: e.toString()));
    }
  }
}
