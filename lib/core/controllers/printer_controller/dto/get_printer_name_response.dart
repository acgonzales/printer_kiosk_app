import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_printer_name_response.freezed.dart';
part 'get_printer_name_response.g.dart';

@freezed
class GetPrinterNameResponse with _$GetPrinterNameResponse {
  const factory GetPrinterNameResponse({
    required String name,
  }) = _GetPrinterNameResponse;

  const GetPrinterNameResponse._();

  factory GetPrinterNameResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPrinterNameResponseFromJson(json);
}
