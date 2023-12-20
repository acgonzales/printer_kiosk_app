// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_printer_name_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPrinterNameResponse _$GetPrinterNameResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPrinterNameResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPrinterNameResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPrinterNameResponseCopyWith<GetPrinterNameResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPrinterNameResponseCopyWith<$Res> {
  factory $GetPrinterNameResponseCopyWith(GetPrinterNameResponse value,
          $Res Function(GetPrinterNameResponse) then) =
      _$GetPrinterNameResponseCopyWithImpl<$Res, GetPrinterNameResponse>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$GetPrinterNameResponseCopyWithImpl<$Res,
        $Val extends GetPrinterNameResponse>
    implements $GetPrinterNameResponseCopyWith<$Res> {
  _$GetPrinterNameResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPrinterNameResponseImplCopyWith<$Res>
    implements $GetPrinterNameResponseCopyWith<$Res> {
  factory _$$GetPrinterNameResponseImplCopyWith(
          _$GetPrinterNameResponseImpl value,
          $Res Function(_$GetPrinterNameResponseImpl) then) =
      __$$GetPrinterNameResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GetPrinterNameResponseImplCopyWithImpl<$Res>
    extends _$GetPrinterNameResponseCopyWithImpl<$Res,
        _$GetPrinterNameResponseImpl>
    implements _$$GetPrinterNameResponseImplCopyWith<$Res> {
  __$$GetPrinterNameResponseImplCopyWithImpl(
      _$GetPrinterNameResponseImpl _value,
      $Res Function(_$GetPrinterNameResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GetPrinterNameResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPrinterNameResponseImpl extends _GetPrinterNameResponse {
  const _$GetPrinterNameResponseImpl({required this.name}) : super._();

  factory _$GetPrinterNameResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPrinterNameResponseImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'GetPrinterNameResponse(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPrinterNameResponseImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPrinterNameResponseImplCopyWith<_$GetPrinterNameResponseImpl>
      get copyWith => __$$GetPrinterNameResponseImplCopyWithImpl<
          _$GetPrinterNameResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPrinterNameResponseImplToJson(
      this,
    );
  }
}

abstract class _GetPrinterNameResponse extends GetPrinterNameResponse {
  const factory _GetPrinterNameResponse({required final String name}) =
      _$GetPrinterNameResponseImpl;
  const _GetPrinterNameResponse._() : super._();

  factory _GetPrinterNameResponse.fromJson(Map<String, dynamic> json) =
      _$GetPrinterNameResponseImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GetPrinterNameResponseImplCopyWith<_$GetPrinterNameResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
