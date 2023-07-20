import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flight_booking/core/routing/routing.dart';
import 'package:flight_booking/features/validate/presentation/cubit/otp_validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpValidationScreen extends StatefulWidget {
  const OtpValidationScreen({super.key});

  @override
  State<OtpValidationScreen> createState() => _OtpValidationScreenState();
}

class _OtpValidationScreenState extends State<OtpValidationScreen> {
  final _optController = TextEditingController();

  @override
  void dispose() {
    _optController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OtpValidationCubit>();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14.w,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 55.h,
                    ),
                    Center(
                      child: Icon(
                        Icons.email_outlined,
                        size: 74.h,
                        color: CustomColors.skyBlue,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Verify Code',
                      style: CustomTypography.headingBlue,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'We sent an OTP code on your Email.',
                      style: CustomTypography.buttonTextWhite.copyWith(
                        color: CustomColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 42.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: PinCodeTextField(
                        length: 6,
                        keyboardType: TextInputType.number,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        controller: _optController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          activeColor: CustomColors.primary,
                          inactiveColor: CustomColors.skyBlue,
                        ),
                        dialogConfig: DialogConfig(),
                        animationType: AnimationType.fade,
                        onChanged: (value) {},
                        appContext: context,
                      ),
                    ),
                    SizedBox(
                      height: 42.h,
                    ),
                    Center(
                      child:
                          BlocConsumer<OtpValidationCubit, OtpValidationState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            error: (message) =>
                                ScaffoldMessenger.of(context).showSnackBar(
                              customSnackBar(
                                success: false,
                                message: message,
                              ),
                            ),
                            validated: () => RouteGenerator.pushReplacement(
                              routeName: RouteGenerator.homeRoute,
                            ),
                            orElse: () {},
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(
                            loading: () => SizedBox(
                              width: 40.w,
                              child: const CircularProgressIndicator(),
                            ),
                            orElse: () => SizedBox(
                              width: MediaQuery.sizeOf(context).width / 3,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_optController.text.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      customSnackBar(
                                        success: false,
                                        message: 'Please enter the otp',
                                      ),
                                    );
                                  }

                                  cubit.validateUser(
                                    int.parse(
                                      _optController.text,
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Validate',
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
