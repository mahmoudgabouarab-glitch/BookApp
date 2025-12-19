import 'package:dio/dio.dart';

abstract class Falier {
  final String errormessage;
  Falier(this.errormessage);
}

class ServiseFalier extends Falier {
  ServiseFalier(super.errormessage);
  factory ServiseFalier.fromdioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServiseFalier("error connectionTimeout ");
      case DioExceptionType.sendTimeout:
        return ServiseFalier("error sendTimeout");
      case DioExceptionType.receiveTimeout:
        return ServiseFalier("error receiveTimeout");
      case DioExceptionType.badCertificate:
        return ServiseFalier("error badCertificate");
      case DioExceptionType.cancel:
        return ServiseFalier("error cancel");
      case DioExceptionType.connectionError:
        return ServiseFalier("error connectionError");
      case DioExceptionType.unknown:
        return ServiseFalier("error unknown");
      case DioExceptionType.badResponse:
        return ServiseFalier.fromResponse(
          dioException.response?.statusCode,
          dioException.response?.data,
        );
    }
  }

  factory ServiseFalier.fromResponse(int? statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
        return ServiseFalier('Bad request');

      case 401:
        return ServiseFalier('Unauthorized');

      case 403:
        return ServiseFalier('Forbidden');

      case 404:
        return ServiseFalier('Not found');

      case 409:
        return ServiseFalier('Conflict occurred');

      case 422:
        return ServiseFalier(response['message'] ?? 'Validation error');

      case 500:
        return ServiseFalier('Internal server error');
      case 429:
        return ServiseFalier('429...429...429..429');

      default:
        return ServiseFalier('Something went wrong');
    }
  }
}
