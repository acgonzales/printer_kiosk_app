import 'package:print_kiosk_app/core/common/dto/error_response.dart';
import 'package:print_kiosk_app/core/common/exceptions/kiosk_exception.dart';
import 'package:print_kiosk_app/core/controllers/printer_controller/dto/print_status_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:print_kiosk_app/core/services/printer_service/printer_service.dart';

part 'printer_controller.g.dart';

@riverpod
class ExecutePrintController extends _$ExecutePrintController {
  @override
  AsyncValue<PrintStatusResponse?> build() {
    return const AsyncData(null);
  }

  Future<void> call(List<int> file, int numberOfCopies) async {
    state = const AsyncLoading();

    final response = await ref.read(printerServiceProvider).executePrint(file, numberOfCopies);

    if (!response.isSuccessful) {
      state = AsyncError(
        PrintServerException(ErrorResponse.fromJson(response.error as Map<String, dynamic>)),
        StackTrace.current,
      );
    }

    state = AsyncData(PrintStatusResponse.fromJson(response.body));
  }
}
