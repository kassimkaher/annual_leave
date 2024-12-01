import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/modals/alert_dialog.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/error_model.dart';
import 'package:annual_leave/src/apps/auth/domain/usecases/logout_usecase.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../extensions/extention.dart';

class NetworkHandler<T> {
  static DataState<T> getDataFailed<T>(DioError dioError,
      {ErrorResponseModel? secondaryError}) {
    if (dioError.type == DioErrorType.other ||
        dioError.type == DioErrorType.connectTimeout ||
        dioError.type == DioErrorType.receiveTimeout ||
        dioError.type == DioErrorType.sendTimeout) {
      return DataFailed<T>(InternetConnectionError());
    }

    kdp(
        name: "dioError",
        msg: '''
\n
endpoint:${dioError.requestOptions.path}
bodyrequest: ${dioError.requestOptions.data}
error: ${dioError.response?.data}
datatype: $T

''',
        c: 'r');
    if (dioError.response?.statusCode == 401) {
      logoutUseCase();
    }

    switch (dioError.response!.statusCode) {
      default:
        return DataFailed<T>(
          ErrorResponseModel.fromJson(
              dioError.response?.data, dioError.response?.statusCode),
        );
    }
  }

  static handdleRequestExceptionMessages(DataFailed result,
      {Map<String, String>? errorMessage}) {
    // if (result.error?.httpStatus == 444) {
    //   goAndRemoveUntil(const UpdateAppPage());
    //   return;
    // }
    if (errorMessage != null &&
        errorMessage.containsKey(result.error?.message)) {
      showTMDialog(
        title: "fail".tr(),
        msg: errorMessage[result.error?.message].tr(),
        icon: const Icon(
          FeatherIcons.alertTriangle,
          color: Colors.red,
        ),
      );
      return;
    }

    showTMDialog(
      title: "fail".tr(),
      msg: result.error?.message.tr() ?? "error".tr(),
      icon: const Icon(
        FeatherIcons.alertTriangle,
        color: Colors.red,
      ),
    );
  }
}
