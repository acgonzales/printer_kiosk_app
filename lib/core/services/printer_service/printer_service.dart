import 'package:chopper/chopper.dart';
import 'package:print_kiosk_app/core/controllers/printer_controller/dto/print_status_response.dart';
import 'package:print_kiosk_app/core/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'printer_service.chopper.dart';
part 'printer_service.g.dart';

@ChopperApi(baseUrl: '/printer')
abstract class PrinterService extends ChopperService {
  static PrinterService create([ChopperClient? client]) => _$PrinterService(client);

  @Get()
  Future<Response> getPrinterName();

  @Post()
  @Multipart()
  Future<Response> executePrint(
    @PartFile('file') String file,
    @Query('n_copies') int numberOfCopies,
  );
}

@riverpod
PrinterService printerService(PrinterServiceRef ref) {
  final chopperClient = ref.read(chopperClientProvider);
  return chopperClient.getService<PrinterService>();
}
