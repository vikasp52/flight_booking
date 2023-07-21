// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:flight_booking/core/network/network.dart';
import 'package:flight_booking/features/flight_results/data/model/models.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

part 'flight_result_data_source.g.dart';

@retrofit.RestApi()
abstract class FlightResultDataSource {
  factory FlightResultDataSource(Dio dio) = _FlightResultDataSource;

  @retrofit.POST(NetworkConstants.flightsSearch)
  @retrofit.Headers(<String, dynamic>{
    "Content-Type": "application/x-www-form-urlencoded",
    // "Authorization":
    //             "Bearer 1195|fmityMG4am7WuDD5IIsz1FBXW0vOLu2Ispt2wAoU",
  })
  Future<FlightResult> searchFlight(
    @retrofit.Body() FlightSearch flightSearch,
  );
}
