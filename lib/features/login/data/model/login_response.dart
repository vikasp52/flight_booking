// ignore_for_file: invalid_annotation_target

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
  bool? status,
  String? message,
  Data? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, Object?> json) =>
      _$LoginResponseFromJson(json);
}


@freezed
class Data with _$Data {
  const factory Data({
  int? userId,
  String? registeredEmail,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) =>
      _$DataFromJson(json);
}