import 'package:dio/dio.dart';

abstract class Failer {
  final String errorMessage;
  Failer(this.errorMessage);
}

class ServerFailer extends Failer {
  ServerFailer(super.errorMessage);
  factory ServerFailer.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailer("connection timeout with Apiserver");
      case DioExceptionType.sendTimeout:
        return ServerFailer("Send timeout with Apiserver");
      case DioExceptionType.receiveTimeout:
        return ServerFailer("Receive timeout with Apiserver");
      case DioExceptionType.badCertificate:
        return ServerFailer("Bad certificate. Connection not secure.");
      case DioExceptionType.badResponse:
        return ServerFailer.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailer("request was canceld with Apiserver");
      case DioExceptionType.connectionError:
        return ServerFailer("Connection error. Please check your internet.");
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailer("no internet");
        }
        return ServerFailer("Unexpected error occurred. Please try again.");
      default:
        return ServerFailer("oops there was an error please try again");
    }
  }
  factory ServerFailer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailer("Your Request Not Found ,Try later");
    } else if (statusCode == 500) {
      return ServerFailer("internal server error ,try later");
    } else {
      return ServerFailer("oops there was an error please try again");
    }
  }
}
