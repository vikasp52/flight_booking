import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flight_booking/core/routing/routing.dart';
import 'package:flight_booking/core/utils/custom_validation.dart';
import 'package:flight_booking/features/register/data/model/models.dart';
import 'package:flight_booking/features/register/presentation/cubit/registration_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _condition = false;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegistrationCubit>();

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
                        child: Text(
                          'Register for New User',
                          style: CustomTypography.titleBlue,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      CommonTextField(
                        lebel: 'First Name *',
                        hintText: 'First name',
                        controller: _firstNameController,
                        validator: (value) => CustomValidation.emptyValidation(
                          value,
                          'Please enter first name',
                        ),
                      ),
                      CommonTextField(
                        lebel: 'Last Name *',
                        hintText: 'Last name',
                        controller: _lastNameController,
                        validator: (value) => CustomValidation.emptyValidation(
                          value,
                          'Please enter last name',
                        ),
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
                        lebel: 'Phone Number *',
                        hintText: '872766526',
                        prefixText: '+971',
                        keyboardType: TextInputType.number,
                        maxLength: 9,
                        controller: _phoneNoController,
                        validator: (value) => CustomValidation.emptyValidation(
                          value,
                          'Please enter Phone no.',
                        ),
                      ),
                      CommonTextField(
                        lebel: 'Password *',
                        obscureText: true,
                        hintText: '************',
                        controller: _passwordController,
                        validator: (value) =>
                            CustomValidation.passwordValidation(
                          value,
                        ),
                      ),
                      CommonTextField(
                        lebel: 'Confirm Password *',
                        obscureText: true,
                        hintText: '************',
                        controller: _confirmPasswordController,
                        validator: (value) =>
                            CustomValidation.confirmPasswordValidation(
                          value,
                          _passwordController.text.trim(),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _condition,
                            onChanged: (value) => setState(() {
                              _condition = value ?? false;
                            }),
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
                        child:
                            BlocConsumer<RegistrationCubit, RegistrationState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              error: (message) =>
                                  ScaffoldMessenger.of(context).showSnackBar(
                                customSnackBar(
                                  success: false,
                                  message: message,
                                ),
                              ),
                              validated: (response) =>
                                  RouteGenerator.pushReplacement(
                                routeName: RouteGenerator.otpVarificationRoute,
                                argument: response.data?.userId,
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

                                      if (!_condition) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          customSnackBar(
                                            success: false,
                                            message:
                                                'Please agrees to term of services',
                                          ),
                                        );
                                      }

                                      final userData = Registration(
                                        firstName:
                                            _firstNameController.text.trim(),
                                        lastName:
                                            _lastNameController.text.trim(),
                                        email: _emailController.text.trim(),
                                        phone: _phoneNoController.text.trim(),
                                        password:
                                            _passwordController.text.trim(),
                                      );
                                      cubit.registerUser(userData);
                                    }
                                  },
                                  child: const Text(
                                    'Register',
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
                            'Already Have An Account?',
                            style: CustomTypography.hintLabelGrey,
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context),
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
      ),
    );
  }
}
