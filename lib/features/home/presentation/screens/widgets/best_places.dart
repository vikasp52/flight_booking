import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestPlaces extends StatelessWidget {
  const BestPlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
        ),
        child: Card(
          elevation: 6,
          shadowColor: CustomColors.primary,
          color: CustomColors.skyBlue,
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      "⭐ 4.9",
                      style: CustomTypography.textFieldLabel,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    const Icon(
                      Icons.favorite_border,
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Text(
                  'Burj Khalifa',
                  style: CustomTypography.accountCheckLabel,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
