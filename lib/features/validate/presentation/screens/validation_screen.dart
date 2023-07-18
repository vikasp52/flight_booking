import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpValidationScreen extends StatefulWidget {
  const OtpValidationScreen({super.key});

  @override
  State<OtpValidationScreen> createState() => _OtpValidationScreenState();
}

class _OtpValidationScreenState extends State<OtpValidationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
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
                    Center(
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width / 3,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Validate',
                          ),
                        ),
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
