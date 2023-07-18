import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: CustomColors.white,
  primaryColor: CustomColors.primary,
  colorScheme: const ColorScheme.light(
    primary: CustomColors.primary,
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    color: CustomColors.white,
  ),
  checkboxTheme: CheckboxThemeData(
    checkColor: const MaterialStatePropertyAll(
      CustomColors.white,
    ),
    fillColor: const MaterialStatePropertyAll(
      CustomColors.primary,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        4,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: CustomTypography.hintLabelGrey,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.w),
      borderSide: BorderSide(
        color: CustomColors.textFieldBorderColor,
        width: 2.w,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.w),
      borderSide: BorderSide(
        color: CustomColors.textFieldBorderColor,
        width: 2.w,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.w),
      borderSide: BorderSide(
        color: CustomColors.textFieldBorderColor,
        width: 2.w,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CustomColors.primary,
      textStyle: CustomTypography.buttonTextWhite,
      minimumSize: Size(double.infinity, 70.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.w),
      ),
    ),
  ),
);
