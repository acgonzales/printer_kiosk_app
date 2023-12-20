import 'package:print_kiosk_app/core/common/dto/error_response.dart';

class PrintServerException implements Exception {
  final ErrorResponse _errrorResponse;

  PrintServerException(this._errrorResponse);

  @override
  String toString() {
    return 'PrintServerException: ${_errrorResponse.detail}';
  }
}
