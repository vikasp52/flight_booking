import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.flight,
    required this.color,
    required this.labelColor,
    required this.label,
  });

  final IconData flight;
  final Color color;
  final Color labelColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: [
          Icon(
            flight,
            color: color,
          ),
          SizedBox(
            width: 5.w,
          ),
          Expanded(
            child: Text(
              label,
              style: CustomTypography.accountCheckLabel.copyWith(
                color: labelColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
