import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/dio_client.dart';
import 'package:annual_leave/core/utils/injector.dart';
import 'package:annual_leave/core/utils/routes.dart';
import 'package:annual_leave/src/apps/tmwn_dash/auth/data/model/user_model.dart';
import 'package:annual_leave/src/apps/tmwn_dash/auth/domain/login_param.dart';

class AuthDataSource {
  Future<DataState<LoginCridential>> loginDataSource(
      {required LoginParams postData}) async {
    final response = await (getIt<DioClient>()
            .instance('', isAuthRequired: false)
            .post(loginUrl, data: postData.toJson()))
        .result<LoginCridential, Map<String, dynamic>>(
            LoginCridential.fromJson);
    return response;
  }
}
