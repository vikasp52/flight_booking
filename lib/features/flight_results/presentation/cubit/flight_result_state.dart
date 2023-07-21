part of 'flight_result_cubit.dart';

@freezed
abstract class FlightResultState with _$FlightResultState {
  const factory FlightResultState.initial() = _Initial;
  const factory FlightResultState.loading() = _Loading;
  const factory FlightResultState.loaded(
    FlightResult flightResult,
  ) = _Loaded;
  const factory FlightResultState.error(
    String message,
  ) = _Error;
}
