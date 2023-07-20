import 'package:dio/dio.dart';
import 'package:flight_booking/core/network/network.dart';
import 'package:flight_booking/features/login/data/data_source/data_source.dart';
import 'package:flight_booking/features/login/data/repository/login_repository.dart';
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
}

Dio _createDio(String baseUrl) {
  final dioFactory = DioFactory(
    baseUrl: baseUrl,
  );

  return dioFactory.create();
}
