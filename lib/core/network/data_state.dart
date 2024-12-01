import 'package:annual_leave/core/network/error_model.dart';

abstract class DataState<T> {
  final T? data;
  final ErrorResponseModel? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(ErrorResponseModel error) : super(error: error);
}

class DataNotSet<T> extends DataState<T> {
  const DataNotSet();
}





// class ServerError extends ErrorResponseModel {
//   ServerError()
//       : super(httpStatus: 500, message: "server_error", error: "server_error");
// }

// class InvalidInput extends ErrorResponseModel {
//   InvalidInput()
//       : super(httpStatus: 400, message: "invalidInput", error: "invalidInput");
// }

// class UnAuthorizeError extends ErrorResponseModel {
//   UnAuthorizeError()
//       : super(
//             httpStatus: 401,
//             message: "error_unauthorize",
//             error: "error_unauthorize");
// }

// class InvalidToken extends ErrorResponseModel {
//   InvalidToken()
//       : super(
//             httpStatus: 401,
//             message: "error_unauthorize",
//             error: "error_unauthorize");
// }

// class NotFoundResponse extends ErrorResponseModel {
//   NotFoundResponse()
//       : super(
//             httpStatus: 404,
//             message: "endpoit_notfound",
//             error: "endpoit_notfound");
// }

// class TooManyRequests extends ErrorResponseModel {
//   TooManyRequests()
//       : super(
//             httpStatus: 429,
//             message: "tooManyRequests",
//             error: "tooManyRequests");
// }
