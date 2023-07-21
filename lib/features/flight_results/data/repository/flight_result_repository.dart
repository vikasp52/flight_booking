import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flight_booking/features/flight_results/data/data_source/data_source.dart';
import 'package:flight_booking/features/flight_results/data/model/models.dart';

class FlightResultRepository {
  final FlightResultDataSource _flightResultDataSource;
  FlightResultRepository(
    FlightResultDataSource flightResultDataSource,
  ) : _flightResultDataSource = flightResultDataSource;

  Future<Either<String, FlightResult>> searchFlights(
    FlightSearch flightSearch,
  ) async {
    try {
      print('flightSearch:: ${flightSearch.toJson()}');
      final response = await _flightResultDataSource.searchFlight(
        flightSearch,
      );

      return Right(response);
    } on DioException catch (error) {
      print('error:: $error');
      if (error.response != null) {
        print('Error is: ${error.response}');
        final errorResponse = ErrorInFlightSearch.fromJson(
          error.response?.data,
        );

        String errorMessage = '';

        if (errorResponse.message?.adults != null) {
          errorMessage = errorResponse.message?.adults?.first ?? '';
        } else if (errorResponse.message?.journeyType != null) {
          errorMessage = errorResponse.message?.journeyType?.first ?? '';
        } else if (errorResponse.message?.originDestinationInfo != null) {
          errorMessage =
              errorResponse.message?.originDestinationInfo?.first ?? '';
        } else if (errorResponse.message?.journeyClass != null) {
          errorMessage = errorResponse.message?.journeyClass?.first ?? '';
        } else {
          errorMessage =
              'From and To flight code must not be greater than 3 characters';
        }

        print('errorMessage is: $errorMessage');
        return Left(errorMessage);
      }
      return const Left('Something went wrong');
    }
  }
}
