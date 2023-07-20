// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:flight_booking/core/network/network.dart';
import 'package:flight_booking/features/login/data/model/models.dart';
import 'package:flight_booking/features/register/data/model/models.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

part 'registration_data_source.g.dart';

@retrofit.RestApi()
abstract class RegistrationDataSource {
  factory RegistrationDataSource(Dio dio) = _RegistrationDataSource;

  @retrofit.POST(NetworkConstants.register)
  Future<LoginResponse> registerUser(
    @retrofit.Body() Registration registration,
  );
}
