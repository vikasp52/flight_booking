import 'package:dio/dio.dart';
import 'package:flight_booking/core/network/network.dart';
import 'package:flight_booking/features/flight_results/data/data_source/data_source.dart';
import 'package:flight_booking/features/flight_results/data/repository/repository.dart';
import 'package:flight_booking/features/login/data/data_source/data_source.dart';
import 'package:flight_booking/features/login/data/repository/login_repository.dart';
import 'package:flight_booking/features/register/data/data_source/data_source.dart';
import 'package:flight_booking/features/register/data/repository/registration_repository.dart';
import 'package:flight_booking/features/validate/data/data_source/otp_validation_data_source.dart';
import 'package:flight_booking/features/validate/data/repository/validation_repository.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.I;
Future<void> setUp(String baseUrl) async {
  serviceLocator.registerLazySingleton<Dio>(() => _createDio(baseUrl));

  serviceLocator.registerLazySingleton<LoginRepository>(
    () => LoginRepository(
      LoginDataSource(
        serviceLocator<Dio>(),
      ),
    ),
  );

  serviceLocator.registerLazySingleton<RegistrationRepository>(
    () => RegistrationRepository(
      RegistrationDataSource(
        serviceLocator<Dio>(),
      ),
    ),
  );

  serviceLocator.registerLazySingleton<OtpValidationRepository>(
    () => OtpValidationRepository(
      OtpValidationDataSource(
        serviceLocator<Dio>(),
      ),
    ),
  );

    serviceLocator.registerLazySingleton<FlightResultRepository>(
    () => FlightResultRepository(
      FlightResultDataSource(
        serviceLocator<Dio>(),
      ),
    ),
  );
}

Dio _createDio(String baseUrl) {
  final dioFactory = DioFactory(
    baseUrl: baseUrl,
  );

  return dioFactory.create();
}
