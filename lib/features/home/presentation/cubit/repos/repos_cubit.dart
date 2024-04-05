import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_test/features/home/data/models/repos/repos_dto.dart';
import 'package:git_test/features/home/domain/usecase/repos_usecase.dart';

part 'repos_state.dart';
part 'repos_cubit.freezed.dart';

class ReposCubit extends Cubit<ReposState> {
  final ReposUseCase _useCase;
  ReposCubit({required ReposUseCase useCase})
      : _useCase = useCase,
        super(const ReposState.initial());
  Future<void> getRepos({required String login}) async {
    emit(const ReposState.loading());
    try {
      final List<ReposDto> repos = await _useCase(login: login);
      emit(ReposState.success(repos: repos));
    } catch (e) {
      emit(ReposState.failure(error: e.toString()));
    }
  }
}
