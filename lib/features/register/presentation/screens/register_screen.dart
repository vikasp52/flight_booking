import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      child: Text(
                        'Register for New User',
                        style: CustomTypography.titleBlue,
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CommonTextField(
                      lebel: 'Full Name *',
                      hintText: 'full name',
                      controller: _emailController,
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
                    CommonTextField(
                      lebel: 'Confirm Password *',
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
                        Expanded(
                          child: Text(
                            'I Agree To The Terms Of Service And Privacy Policy',
                            style: CustomTypography.rememberLoginGrey,
                          ),
                        ),
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
                            'Register',
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
                          'Already Have An Account?',
                          style: CustomTypography.hintLabelGrey,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Log In',
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
