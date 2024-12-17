import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/dio_log_interceptor.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/core/network/network_handle_error.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioClient {
  Dio instance(String? url, {bool isAuthRequired = true}) {
    // final token = LocalDatabase.getToken();
    var dio = Dio(url != null ? BaseOptions(baseUrl: url) : BaseOptions());

    dio.options.headers['X-App-Language'] =
        LocalDatabase.getLocalization().name;
    dio.options.headers['Accept'] = 'application/json';
    dio.options.headers['Content-Type'] = 'application/json';
    if (isAuthRequired) {
      dio.options.headers['Authorization'] =
          '${LocalDatabase.getCridentialFromLocal()?.token}';
    }
    // dio.options.headers['app-platform-type'] = Platform.isAndroid
    //     ? "ANDROID"
    //     : Platform.isIOS
    //         ? "IOS"
    //         : "OTHER";

    dio.interceptors.add(DioLogger());

    return dio;
  }
}

extension ApiCallHandler<T> on Future<Response<dynamic>> {
  Future<DataState<T>> result<T, RT>(T Function(RT json) dataType) async {
    try {
      final data = await this;

      return DataSuccess(dataType(data.data["data"]));
    } on DioError catch (dioError) {
      return NetworkHandler.getDataFailed(dioError);
    } catch (error) {
      return DataFailed(InternetConnectionError());
    }
  }

  Future<DataState<T>> resultWithList<T>(
      T Function(List<dynamic> json) dataType) async {
    try {
      final data = await this;

      return DataSuccess(dataType(data.data["data"]));
    } on DioError catch (dioError) {
      return NetworkHandler.getDataFailed<T>(dioError);
    } catch (error) {
      return DataFailed(InternetConnectionError());
    }
  }

  Future<DataState<T>> resultWithoutData<T>(
      T Function(Map<String, dynamic> json) dataType) async {
    try {
      final data = await this;
      //kdp(name: "resultWithoutData", msg: , c: "m");

      return DataSuccess(dataType(data.data));
    } on DioError catch (dioError) {
      return NetworkHandler.getDataFailed<T>(dioError);
    } catch (error) {
      return DataFailed(InternetConnectionError());
    }
  }
}
