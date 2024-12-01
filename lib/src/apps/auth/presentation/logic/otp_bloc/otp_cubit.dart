import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/src/apps/auth/data/datasource/remote.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_cubit.freezed.dart';
part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  final AuthDataSource authDataSource = AuthDataSource();
  OtpCubit() : super(const OtpState.initial());

  verifyUserEvent(String Otp) async {
    emit(state.copyWith(remoteStatus: RemoteDataStatus.loading));
    final response = await authDataSource.verifyDataSource(code: Otp);
    if (response is DataFailed) {
      emit(state.copyWith(
          remoteStatus: RemoteDataStatus.error, error: response.error));
      return;
    }

    getProfileEvent();
  }

  getProfileEvent() async {
    emit(state.copyWith(remoteStatus: RemoteDataStatus.loading));
    final response = await authDataSource.getProfileDataSource();
    if (response is DataFailed) {
      emit(state.copyWith(
          remoteStatus: RemoteDataStatus.error, error: response.error));
      return;
    }
    LocalDatabase.saveProfile(response.data!);

    emit(state.copyWith(remoteStatus: RemoteDataStatus.loaded));
  }

  resendOtp() async {
    emit(state.copyWith(remoteStatus: RemoteDataStatus.loading));
    final response = await authDataSource.sendOtpDataSource();
    if (response is DataFailed) {
      emit(state.copyWith(
          remoteStatus: RemoteDataStatus.error, error: response.error));
      return;
    }

    emit(state.copyWith(remoteStatus: RemoteDataStatus.ideal));
  }
}
