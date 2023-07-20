part of 'registration_cubit.dart';

@freezed
abstract class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.loading() = _Loading;
  const factory RegistrationState.validated(
    LoginResponse loginResponse,
  ) = _Validated;
  const factory RegistrationState.error(String message) = _Error;
}
