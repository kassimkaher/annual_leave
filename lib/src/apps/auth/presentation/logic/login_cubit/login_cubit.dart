import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/src/apps/auth/data/datasource/remote.dart';
import 'package:annual_leave/src/apps/auth/domain/login_param.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthDataSource authDataSource = AuthDataSource();
  LoginCubit() : super(const LoginState.initial());

  loginEvent(LoginParams login) async {
    emit(state.copyWith(remoteStatus: RemoteDataStatus.loading));
    final response = await authDataSource.loginDataSource(postData: login);
    if (response is DataFailed) {
      emit(state.copyWith(
          remoteStatus: RemoteDataStatus.error, error: response.error));
      return;
    }
    LocalDatabase.saveToken(response.data!);
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
}
