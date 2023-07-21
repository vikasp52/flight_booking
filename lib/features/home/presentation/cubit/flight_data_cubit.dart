// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_data_state.dart';
part 'flight_data_cubit.freezed.dart';

class FlightDataCubit extends Cubit<FlightDataState> {
  FlightDataCubit() : super(FlightDataState.initial());

  String getFlightClass(int flightClass) {
    switch (flightClass) {
      case 0:
        return 'PremiumEconomy';
      case 1:
        return 'Economy';
      case 2:
        return 'Business';
      case 3:
        return 'First';
      default:
        return '';
    }
  }

  String getFlightType(String flightType) {
    switch (flightType) {
      case 'Business':
        return 'Circle';
      case 'One Way':
        return 'OneWay';
      case 'Round Trip':
        return 'Return';
      default:
        return '';
    }
  }

  void changeJourneyType(String journeyType) {
    emit(
      state.copyWith(
        journeyType: journeyType,
      ),
    );
  }

  void addRemoveAdult(bool isAdd) {
    int adultCount = state.adultCount;

    if (isAdd) {
      if (adultCount < 9) {
        emit(
          state.copyWith(
            adultCount: adultCount + 1,
          ),
        );
      }
    } else {
      if (adultCount > 0) {
        emit(
          state.copyWith(
            adultCount: adultCount - 1,
          ),
        );
      }
    }
  }

  void addRemoveChildren(bool isAdd) {
    int childrenCount = state.childrenCount;

    if (isAdd) {
      if (childrenCount < 9) {
        emit(
          state.copyWith(
            childrenCount: childrenCount + 1,
          ),
        );
      }
    } else {
      if (childrenCount > 0) {
        emit(
          state.copyWith(
            childrenCount: childrenCount - 1,
          ),
        );
      }
    }
  }

  void addRemoveInfant(bool isAdd) {
    int infantCount = state.infantCount;

    if (isAdd) {
      if (infantCount < 9) {
        emit(
          state.copyWith(
            infantCount: infantCount + 1,
          ),
        );
      }
    } else {
      if (infantCount > 0) {
        emit(
          state.copyWith(
            infantCount: infantCount - 1,
          ),
        );
      }
    }
  }

  void selectFlightClass(int flightClass) {
    emit(
      state.copyWith(
        flightClass: flightClass,
      ),
    );
  }

  void selectDeparterDate(String departureDate) {
    emit(
      state.copyWith(
        departureDate: departureDate,
      ),
    );
  }

  void selectReturnDate(String returnDate) {
    emit(
      state.copyWith(
        departureDate: returnDate,
      ),
    );
  }
}
