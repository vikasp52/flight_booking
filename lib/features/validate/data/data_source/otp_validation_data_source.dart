// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:flight_booking/core/network/network.dart';
import 'package:flight_booking/features/login/data/model/models.dart';
import 'package:flight_booking/features/validate/data/model/otp_validation.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

part 'otp_validation_data_source.g.dart';

@retrofit.RestApi()
abstract class OtpValidationDataSource {
  factory OtpValidationDataSource(Dio dio) = _OtpValidationDataSource;

  @retrofit.POST(NetworkConstants.loginOtp)
  Future<LoginResponse> validateUser(
    @retrofit.Body() OtpValidation otpValidation,
  );
}
