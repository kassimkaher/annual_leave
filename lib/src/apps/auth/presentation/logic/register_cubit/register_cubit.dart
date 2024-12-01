import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/src/apps/auth/data/datasource/remote.dart';
import 'package:annual_leave/src/apps/auth/domain/register_param.dart';
import 'package:annual_leave/src/apps/auth/domain/step_enum.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  AuthDataSource authDataSource = AuthDataSource();
  RegisterCubit() : super(const RegisterState.initial());
  registerEvent(RegisterParam registerParam) async {
    emit(state.copyWith(remoteStatus: RemoteDataStatus.loading));
    final response =
        await authDataSource.registerDataSource(registerParam: registerParam);
    if (response is DataFailed) {
      emit(state.copyWith(
          remoteStatus: RemoteDataStatus.error, error: response.error));
      return;
    }

    emit(state.copyWith(
        remoteStatus: RemoteDataStatus.loaded, authStep: AuthStep.otp));
  }

  sendOtpEvent() async {
    emit(state.copyWith(remoteStatus: RemoteDataStatus.loading));
    final response = await authDataSource.sendOtpDataSource();
    if (response is DataFailed) {
      emit(state.copyWith(
          remoteStatus: RemoteDataStatus.error, error: response.error));
      return;
    }

    emit(state.copyWith(remoteStatus: RemoteDataStatus.loaded));
  }

  verifyOtpEvent(String code) async {
    emit(state.copyWith(remoteStatus: RemoteDataStatus.loading));
    final response = await authDataSource.verifyDataSource(code: code);
    if (response is DataFailed) {
      emit(state.copyWith(
          remoteStatus: RemoteDataStatus.error, error: response.error));
      return;
    }

    emit(state.copyWith(remoteStatus: RemoteDataStatus.loaded));
  }
}
