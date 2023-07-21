// ignore_for_file: depend_on_referenced_packages

import 'package:flight_booking/features/flight_results/data/model/models.dart';
import 'package:flight_booking/features/flight_results/data/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'flight_result_state.dart';
part 'flight_result_cubit.freezed.dart';

class FlightResultCubit extends Cubit<FlightResultState> {
  FlightResultCubit({
    required this.flightResultRepository,
    required this.flightSearch,
  }) : super(
          const FlightResultState.initial(),
        ) {
    showFlights();
  }

  final FlightResultRepository flightResultRepository;
  final FlightSearch flightSearch;

  String buildPassengerText(int adults, int childs, int infants) {
  final buffer = StringBuffer();

  if (adults > 0) {
    buffer.write('$adults Adults');
  }

  if (childs > 0) {
    if (buffer.isNotEmpty) {
      buffer.write(', ');
    }
    buffer.write('$childs Child');
  }

  if (infants > 0) {
    if (buffer.isNotEmpty) {
      buffer.write(', ');
    }
    buffer.write('$infants Infants');
  }

  return buffer.toString();
}

String buildDateText(String departureDate, String returnDate) {
  final buffer = StringBuffer();

  buffer.write(departureDate);

  if (returnDate.isNotEmpty) {
    buffer.write(' - $returnDate');
  }

  return buffer.toString();
}

  Future<void> showFlights() async {
    emit(const FlightResultState.loading());

    print('flightSearch: ${flightSearch.toJson()}');

    final flightResult = await flightResultRepository.searchFlights(
      flightSearch,
    );

    print('flightSearch result: $flightResult');

    flightResult.fold(
      (l) {
        emit(
          FlightResultState.error(
            l,
          ),
        );
      },
      (r) async {
        emit(
          FlightResultState.loaded(r),
        );
      },
    );
  }
}
