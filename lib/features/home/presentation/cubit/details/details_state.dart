part of 'details_cubit.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.initial() = _Initial;
  const factory DetailsState.loading() = _Loading;
  const factory DetailsState.success({required UsersDto details}) = _Success;
  const factory DetailsState.failure({required String error}) = _Failure;
}
