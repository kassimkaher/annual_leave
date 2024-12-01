part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial(
      {@Default(RemoteDataStatus.ideal) RemoteDataStatus remoteStatus,
      ErrorResponseModel? error,
      @Default(AuthStep.login) AuthStep authStep}) = _Initial;
}
