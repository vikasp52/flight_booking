// ignore_for_file: invalid_annotation_target

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_validation.freezed.dart';
part 'otp_validation.g.dart';

@freezed
class OtpValidation with _$OtpValidation {
  const factory OtpValidation({
    @JsonKey(name: 'user_id') required  int? userId,
    required int? otp,
    required String? app,
    @JsonKey(name: 'device_type') required String? deviceType,
  }) = _OtpValidation;

  factory OtpValidation.fromJson(Map<String, Object?> json) =>
      _$OtpValidationFromJson(json);
}
