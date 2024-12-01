import 'dart:developer';
import 'dart:io';

import 'package:annual_leave/core/extensions/extention.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/core/network/network_handle_error.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioClient {
  Dio instance(String? url) {
    // final token = LocalDatabase.getToken();

    return Dio()
      ..options.headers['Accept'] = 'application/json'
      ..options.headers['Content-Type'] = 'application/json'
      ..options.headers['Authorization'] = "Bearer ${LocalDatabase.getToken()}"
      ..options.headers['app-platform-type'] = Platform.isAndroid
          ? "ANDROID"
          : Platform.isIOS
              ? "IOS"
              : "OTHER"
      ..interceptors.add(
        LogInterceptor(
          logPrint: (obj) {
            if (kDebugMode) {
              log('req :  $obj');
            }
          },
        ),
      );
  }

  // options() => BaseOptions(
  //     receiveDataWhenStatusError: true,
  //     connectTimeout: 60 * 1000, // 60 seconds
  //     receiveTimeout: 60 * 1000 // 60 seconds
  //     );
}

extension ApiCallHandler<T> on Future<Response<dynamic>> {
  Future<DataState<T>> result<T, RT>(T Function(RT json) dataType) async {
    try {
      final data = await this;

      kdp(name: "data", msg: data, c: "gr");

      return DataSuccess(dataType(data.data["data"]));
    } on DioError catch (dioError) {
      return NetworkHandler.getDataFailed(dioError);
    } catch (error) {
      kdp(name: "Exaption: ", msg: error, c: "r");

      return DataFailed(InternetConnectionError());
    }
  }

  Future<DataState<T>> resultWithList<T>(
      T Function(List<dynamic> json) dataType) async {
    try {
      final data = await this;
      kdp(name: "datafadf", msg: data.data, c: "gr");

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
