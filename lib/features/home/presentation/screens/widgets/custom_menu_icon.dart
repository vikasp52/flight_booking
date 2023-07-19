


import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMenuIcons extends StatelessWidget {
  const CustomMenuIcons({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: CustomColors.skyBlue,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: CustomColors.skyBlue,
        ),
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Icon(
          icon,
          color: CustomColors.primary,
        ),
      ),
    );
  }
}
