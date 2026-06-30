import 'package:dio/dio.dart';


abstract class Failures {
  final String errMessage;
  const Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);
factory ServerFailure.fromDioError(DioException dioError) {
  switch (dioError.type) {
    case DioExceptionType.connectionTimeout:
      return ServerFailure(
        "Connection timed out. Please check your internet connection and try again.",
      );

    case DioExceptionType.sendTimeout:
      return ServerFailure(
        "Request took too long to send. Please try again.",
      );

    case DioExceptionType.receiveTimeout:
      return ServerFailure(
        "Server is taking too long to respond. Please try again later.",
      );

    case DioExceptionType.badCertificate:
      return ServerFailure(
        "There is a problem with the server security certificate.",
      );

    case DioExceptionType.badResponse:
      return ServerFailure.fromBadResponse(
        dioError.response!.statusCode!,
        dioError.response!.data,
      );

    case DioExceptionType.cancel:
      return ServerFailure(
        "The request was cancelled.",
      );

    case DioExceptionType.connectionError:
      return ServerFailure(
        "No internet connection. Please check your network and try again.",
      );

    case DioExceptionType.unknown:
    default:
      return ServerFailure(
        "An unexpected error occurred. Please try again.",
      );
  }
}
  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Method not found");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, try later!");
    } else {
      return ServerFailure("Oops there was an Error, Please try again");
    }
  }
}
