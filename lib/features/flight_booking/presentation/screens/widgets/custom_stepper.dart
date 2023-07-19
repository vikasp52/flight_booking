import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({
    super.key,
    required this.backgroundColor,
    required this.borderColor,
    required this.iconColor,
    required this.label,
    required this.iconData,
  });

  final Color backgroundColor;
  final Color borderColor;
  final Color iconColor;
  final String label;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: borderColor,
              width: 2.w,
            ),
            borderRadius: BorderRadius.circular(
              24.w,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.h),
            child: Icon(
              iconData,
              color: iconColor,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          label,
          style: CustomTypography.accountCheckLabel,
        )
      ],
    );
  }
}
