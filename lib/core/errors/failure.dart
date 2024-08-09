import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioExcepiton(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connction time out');

      case DioExceptionType.sendTimeout:
        return ServerFailure('send time out');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive Time out');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );

      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificate');

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error');

      default:
        return ServerFailure('OPS there was an error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request Not found, try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server fialure , please try later');
    } else {
      return ServerFailure(
        'OPS there was error , status code $statusCode',
      );
    }
  }
}
