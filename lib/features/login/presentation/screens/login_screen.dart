import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 55.h,
                    ),
                    Center(
                      child: Icon(
                        Icons.person_pin,
                        size: 74.h,
                        color: CustomColors.skyBlue,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        'Login to Existing User',
                        style: CustomTypography.titleBlue,
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CommonTextField(
                      lebel: 'Email *',
                      hintText: 'example@gmail.com',
                      controller: _emailController,
                    ),
                    CommonTextField(
                      lebel: 'Password *',
                      obscureText: true,
                      hintText: '************',
                      controller: _passwordController,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Remember Login Info ',
                          style: CustomTypography.rememberLoginGrey,
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: CustomTypography.forgotPasswordBlueLabel,
                          ),
                        )
                      ],
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
                            'Login',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t Have An Account?',
                          style: CustomTypography.hintLabelGrey,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Create Account?',
                            style: CustomTypography.forgotPasswordBlueLabel
                                .copyWith(
                              fontSize: 14.sp,
                            ),
                          ),
                        )
                      ],
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
