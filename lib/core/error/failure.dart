import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassage;
  const Failure(this.errMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Conacation Timeout with apiServer ');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send Timeout with apiServer ');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Resceive Timeout with apiServer ');
      case DioExceptionType.badCertificate:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('canceled');
      case DioExceptionType.connectionError:
      // TODO: Handle this case.
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('no interNet connection');
        }
        return ServerFailure('try again later');
      default:
        return ServerFailure('try again later');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['massage']);
    } else if (statusCode == 404) {
      return ServerFailure('try later');
    } else if (statusCode == 500) {
      return ServerFailure('Server failure, try later');
    } else {
      return ServerFailure('opps there an error, please try again');
    }
  }
}
