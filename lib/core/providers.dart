import 'package:chopper/chopper.dart';
import 'package:print_kiosk_app/core/services/printer_service/printer_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
ChopperClient chopperClient(ChopperClientRef ref) => ChopperClient(
      baseUrl: Uri.http('localhost:8000'),
      converter: const JsonConverter(),
      errorConverter: const JsonConverter(),
      services: [
        PrinterService.create(),
      ],
    );
