import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flight_booking/features/login/data/model/models.dart';
import 'package:flight_booking/features/validate/data/data_source/otp_validation_data_source.dart';
import 'package:flight_booking/features/validate/data/model/models.dart';

class OtpValidationRepository {
  final OtpValidationDataSource _otpValidationDataSource;
  OtpValidationRepository(
    OtpValidationDataSource otpValidationDataSource,
  ) : _otpValidationDataSource = otpValidationDataSource;

  Future<Either<String, LoginResponse>> validateUser({
    required int otp,
    required int userId,
  }) async {
    try {
      final otpData = OtpValidation(
        otp: otp,
        userId: userId,
        app: "mobile",
        deviceType: "ios",
      );

      final response = await _otpValidationDataSource.validateUser(
        otpData,
      );

      if (response.status == false) {
        return Left(response.message ?? '');
      }

      return Right(response);
    } on DioException catch (error) {
      if (error.response != null) {
        return Left(error.response?.data);
      }
      return const Left('Something went wrong');
    }
  }
}
