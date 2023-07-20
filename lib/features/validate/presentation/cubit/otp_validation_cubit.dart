// ignore_for_file: depend_on_referenced_packages

import 'package:flight_booking/features/validate/data/repository/validation_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_validation_state.dart';

part 'otp_validation_cubit.freezed.dart';

class OtpValidationCubit extends Cubit<OtpValidationState> {
  OtpValidationCubit({
    required this.otpValidationRepository,
    required this.userId,
  }) : super(
          const OtpValidationState.initial(),
        );

  final OtpValidationRepository otpValidationRepository;
  final int userId;

  Future<void> validateUser(
    int otp,
  ) async {
    emit(const OtpValidationState.loading());

    final validate = await otpValidationRepository.validateUser(
      otp: otp,
      userId: userId,
    );

    validate.fold(
      (l) {
        emit(
          OtpValidationState.error(
            l,
          ),
        );
      },
      (r) async {
        emit(
          const OtpValidationState.validated(),
        );
      },
    );
  }
}
