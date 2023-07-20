// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OtpValidation _$$_OtpValidationFromJson(Map<String, dynamic> json) =>
    _$_OtpValidation(
      userId: json['user_id'] as int?,
      otp: json['otp'] as int?,
      app: json['app'] as String?,
      deviceType: json['device_type'] as String?,
    );

Map<String, dynamic> _$$_OtpValidationToJson(_$_OtpValidation instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'otp': instance.otp,
      'app': instance.app,
      'device_type': instance.deviceType,
    };
