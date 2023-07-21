part of 'flight_data_cubit.dart';

@freezed
abstract class FlightDataState with _$FlightDataState {
  const factory FlightDataState({
    required String journeyType,
    required String flyingFrom,
    required String flyingTo,
    required String departureDate,
    required String returnDate,
    required int flightClass,
    required int adultCount,
    required int childrenCount,
    required int infantCount,
    required bool showReturnDateSelectionOption,
  }) = _FlightDataState;

  factory FlightDataState.initial() => const FlightDataState(
        journeyType: 'One Way',
        flyingFrom: '',
        flyingTo: '',
        departureDate: '',
        returnDate: '',
        flightClass: 1,
        adultCount: 0,
        childrenCount: 0,
        infantCount: 0,
        showReturnDateSelectionOption: false,
      );
}
