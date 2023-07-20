// ignore_for_file: invalid_annotation_target

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration.freezed.dart';
part 'registration.g.dart';

@freezed
class Registration with _$Registration {
  const factory Registration({
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  String? password,
  }) = _Registration;

  factory Registration.fromJson(Map<String, Object?> json) =>
      _$RegistrationFromJson(json);
}