part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial(
      {@Default(RemoteDataStatus.ideal) RemoteDataStatus remoteStatus,
      ErrorResponseModel? error}) = _Initial;
}
