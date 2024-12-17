import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/dio_client.dart';
import 'package:annual_leave/core/utils/injector.dart';
import 'package:annual_leave/core/utils/routes.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppConfigDataSource {
  Future<DataState<Map<String, dynamic>?>> getDataStoreSource(
      {required LanguageEnum language}) async {
    final response = await (getIt<DioClient>()
        .instance('', isAuthRequired: false)
        .get(
          getDataStoreUrl, //faqUrl
          options: Options(
            headers: {"Content-Language": language.name},
          ),
        )).result<Map<String, dynamic>, Map<String, dynamic>>((data) => data);

    return response;
  }
}
