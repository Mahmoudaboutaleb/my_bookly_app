import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  Failures(this.errorMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timed out');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Request timed out');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Failed to receive data');
      case DioExceptionType.badCertificate:
        return ServerFailure('Invalid certificate');
      case DioExceptionType.badResponse:
        return ServerFailure('Invalid response');
      case DioExceptionType.cancel:
        return ServerFailure('Request cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Failed to connect to server');
      case DioExceptionType.unknown:
        return ServerFailure('An unknown error occurred');
      default:
        return ServerFailure('Unexpected error occurred');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure('Resource not found , please try again');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error');
    } else {
      return ServerFailure('An unknown error occurred');
    }
  }
}
