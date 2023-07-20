import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flight_booking/features/login/data/data_source/data_source.dart';
import 'package:flight_booking/features/login/data/model/models.dart';

class LoginRepository {
  final LoginDataSource _loginDataSource;
  LoginRepository(
    LoginDataSource loginDataSource,
  ) : _loginDataSource = loginDataSource;

  Future<Either<String, LoginResponse>> authorizedUser(Login login) async {
    try {
      final response = await _loginDataSource.authorizedUser(login);

      print('response is: ${response.toJson()}');

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
