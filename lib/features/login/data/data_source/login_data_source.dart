// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:flight_booking/core/network/network.dart';
import 'package:flight_booking/features/login/data/model/models.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

part 'login_data_source.g.dart';

@retrofit.RestApi()
abstract class LoginDataSource {
  factory LoginDataSource(Dio dio) = _LoginDataSource;

  @retrofit.POST(NetworkConstants.login)
  Future<LoginResponse> authorizedUser(
    @retrofit.Body() Login login,
  );
}