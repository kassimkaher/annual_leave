import 'dart:convert';

import 'package:annual_leave/core/extensions/extention.dart';
import 'package:dio/dio.dart';

class DioLogger extends InterceptorsWrapper {
  DioLogger();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    L.warning(name: 'EndPoint', msg: options.path);
    L.warning(name: 'method', msg: options.method);
    // L.warning(name: 'header', msg: options.headers.toString());
    //  L.warning (name: 'followRedirects',  msg:options.followRedirects);
    // L.warning(name: 'connectTimeout', msg: options.connectTimeout);
    // L.warning(name: 'sendTimeout', msg: options.sendTimeout);
    // L.warning(name: 'receiveTimeout', msg: options.receiveTimeout);
    // L.warning(
    //   name: 'receiveDataWhenStatusError',
    //   msg: options.receiveDataWhenStatusError.toString(),
    // );

    // if (requestHeader) {
    //   logPrint('headers:', c: 'cy');
    //   options.headers.forEach((key, v) =>  kdp(name:' $key', v), c: 'cy');
    // }
    // if (requestBody) {
    //   logPrint('data:', c: 'cy');
    //   _printAll(options.data);
    // }

    return handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    L.success(name: 'Endpoint', msg: response.requestOptions.path);
    L.success(name: 'statusCode', msg: response.statusCode.toString());

    // L.info(name: 'data', msg: options.connectTimeout);
    // L.info(name: 'sendTimeout', msg: options.sendTimeout);
    // L.info(name: 'receiveTimeout', msg: options.receiveTimeout);
    // L.info(
    //   name: 'receiveDataWhenStatusError',
    //   msg: options.receiveDataWhenStatusError.toString(),
    // );
    // L.info(name: 'extra', msg: options.toString());

    // if (requestHeader) {
    //   logPrint('headers:', c: 'cy');
    //   options.headers.forEach((key, v) =>  kdp(name:' $key', v), c: 'cy');
    // }
    // if (requestBody) {
    //   logPrint('data:', c: 'cy');
    //   _printAll(options.data);
    // }

    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    // Check if the user is unauthorized.

    L.error(
      name: "Endpoint",
      msg: "${err.requestOptions.uri}",
    );
    L.error(name: "method", msg: err.requestOptions.method);
    L.error(
      name: "Error Message",
      msg: jsonEncode(err.message),
    );

    handler.next(err);
  }
}
