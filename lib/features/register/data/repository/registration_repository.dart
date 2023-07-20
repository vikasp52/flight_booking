import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flight_booking/features/login/data/model/models.dart';
import 'package:flight_booking/features/register/data/data_source/data_source.dart';
import 'package:flight_booking/features/register/data/model/registration.dart';

class RegistrationRepository {
  final RegistrationDataSource _registrationDataSource;
  RegistrationRepository(
    RegistrationDataSource registrationDataSource,
  ) : _registrationDataSource = registrationDataSource;

  Future<Either<String, LoginResponse>> registerUser(
    Registration registration,
  ) async {
    try {
      final response = await _registrationDataSource.registerUser(
        registration,
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
