part of 'otp_validation_cubit.dart';

@freezed
abstract class OtpValidationState with _$OtpValidationState {
  const factory OtpValidationState.initial() = _Initial;
  const factory OtpValidationState.loading() = _Loading;
  const factory OtpValidationState.validated() = _Validated;
  const factory OtpValidationState.error(String message) = _Error;
}
