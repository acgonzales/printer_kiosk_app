import 'package:freezed_annotation/freezed_annotation.dart';

part 'print_status_response.freezed.dart';
part 'print_status_response.g.dart';

@freezed
class PrintStatusResponse with _$PrintStatusResponse {
  const factory PrintStatusResponse({
    required bool success,
  }) = _PrintStatusResponse;

  const PrintStatusResponse._();

  factory PrintStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$PrintStatusResponseFromJson(json);
}
