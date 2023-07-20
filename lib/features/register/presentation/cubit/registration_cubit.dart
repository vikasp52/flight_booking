// ignore_for_file: depend_on_referenced_packages

import 'package:flight_booking/features/login/data/model/models.dart';
import 'package:flight_booking/features/register/data/model/registration.dart';
import 'package:flight_booking/features/register/data/repository/registration_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.dart';

part 'registration_cubit.freezed.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit(
    this.registrationRepository,
  ) : super(const RegistrationState.initial());

  final RegistrationRepository registrationRepository;

  Future<void> registerUser(
    Registration registration,
  ) async {
    emit(const RegistrationState.loading());

    final validate = await registrationRepository.registerUser(
      registration,
    );

    validate.fold(
      (l) {
        emit(
          RegistrationState.error(
            l,
          ),
        );
      },
      (r) async {
        emit(
          RegistrationState.validated(
            r,
          ),
        );
      },
    );
  }
}
