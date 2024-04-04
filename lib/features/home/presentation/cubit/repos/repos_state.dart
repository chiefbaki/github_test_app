part of 'repos_cubit.dart';

@freezed
class ReposState with _$ReposState {
  const factory ReposState.initial() = _Initial;
  const factory ReposState.loading() = _Loading;
  const factory ReposState.success({required List<ReposDto> repos}) = _Success;
  const factory ReposState.failure({required String error}) = _Failure;
}
