// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$PrinterService extends PrinterService {
  _$PrinterService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PrinterService;

  @override
  Future<Response<dynamic>> getPrinterName() {
    final Uri $url = Uri.parse('/printer');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> executePrint(
    String file,
    int numberOfCopies,
  ) {
    final Uri $url = Uri.parse('/printer');
    final Map<String, dynamic> $params = <String, dynamic>{
      'n_copies': numberOfCopies
    };
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<String>(
        'file',
        file,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
