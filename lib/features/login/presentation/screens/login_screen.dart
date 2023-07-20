import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flight_booking/core/routing/routing.dart';
import 'package:flight_booking/core/utils/utils.dart';
import 'package:flight_booking/features/login/presentation/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Form(
            key: _formKey,
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
                        validator: (value) => CustomValidation.emptyValidation(
                          value,
                          'Please enter email',
                        ),
                      ),
                      CommonTextField(
                        lebel: 'Password *',
                        obscureText: true,
                        hintText: '************',
                        controller: _passwordController,
                        validator: (value) => CustomValidation.emptyValidation(
                          value,
                          'Please enter password',
                        ),
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
                        child: BlocConsumer<LoginCubit, LoginState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              error: (message) =>
                                  ScaffoldMessenger.of(context).showSnackBar(
                                customSnackBar(
                                  success: false,
                                  message: message,
                                ),
                              ),
                              validated: ()=>RouteGenerator.pushReplacement(
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
                                    if (_formKey.currentState!.validate()) {
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      cubit.authorizedUser(
                                        userName: _emailController.text.trim(),
                                        password:
                                            _passwordController.text.trim(),
                                      );
                                    }
                                  },
                                  child: const Text(
                                    'Login',
                                  ),
                                ),
                              ),
                            );
                          },
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
                            onPressed: () => RouteGenerator.pushName(
                              routeName: RouteGenerator.registerationRoute,
                            ),
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
      ),
    );
  }
}
