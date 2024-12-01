import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/dio_client.dart';
import 'package:annual_leave/core/utils/injector.dart';
import 'package:annual_leave/core/utils/routes.dart';
import 'package:annual_leave/src/apps/auth/data/model/user_model.dart';
import 'package:annual_leave/src/apps/auth/domain/login_param.dart';
import 'package:annual_leave/src/apps/auth/domain/register_param.dart';

class AuthDataSource {
  Future<DataState<UserModel>> getProfileDataSource() async {
    final response = await (getIt<DioClient>().instance('').get(
          profileUrl,
        )).result(UserModel.fromJson);
    return response;
  }

  Future<DataState<void>> registerDataSource(
      {required RegisterParam registerParam}) async {
    final response = await (getIt<DioClient>()
            .instance('')
            .post(registerUrl, data: registerParam.toJson()))
        .result<void, void>((s) {});
    return response;
  }

  Future<DataState<String>> loginDataSource(
      {required LoginParams postData}) async {
    final response = await (getIt<DioClient>()
            .instance('')
            .post(loginUrl, data: postData.toJson()))
        .result<String, Map<String, dynamic>>((s) => s["access_token"]);
    return response;
  }

  Future<DataState<void>> sendOtpDataSource() async {
    final response = await (getIt<DioClient>().instance('').get(
          sendOtpUrl,
        )).result<void, void>((s) {});
    return response;
  }

  Future<DataState<void>> verifyDataSource({required String code}) async {
    final response = await (getIt<DioClient>().instance('').post(
      verifyUrl,
      data: {"code": code},
    )).result<void, void>((s) {});
    return response;
  }
}
