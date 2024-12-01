class ErrorResponseModel {
  final int? httpStatus;
  final bool? status;
  final String? message;
  final ErrorResponse error;

  ErrorResponseModel({
    this.status,
    required this.message,
    required this.error,
    this.httpStatus,
  });

  factory ErrorResponseModel.fromJson(
      Map<String, dynamic> json, int? httpStatus) {
    return ErrorResponseModel(
      status: json['status'] ?? false,
      message: json['message'] ?? '',
      httpStatus: httpStatus,
      error: ErrorResponse.values.byName(json['error'] ?? "Unknown"),
    );
  }
}

enum ErrorResponse {
  Unknown,
  Validation,
  FoodArrayEmpty,
  Credential,
  OtpError,
  OtpAlreadySent,
  OtpExpire,
  ErrorConnection,
  VerifyNeed,
  ParsingError,
  ModulNotFound
}

class InternetConnectionError extends ErrorResponseModel {
  InternetConnectionError()
      : super(
            httpStatus: 0,
            message: "connection_error_confirm",
            error: ErrorResponse.ErrorConnection);
}
