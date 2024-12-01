part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial(
      {@Default(RemoteDataStatus.ideal) RemoteDataStatus remoteStatus,
      ErrorResponseModel? error}) = _Initial;
}
