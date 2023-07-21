import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarFlightBooking extends StatelessWidget {
  const AppBarFlightBooking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: CustomColors.primary,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back,
          color: CustomColors.white,
        ),
      ),
      elevation: 0.0,
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: 5.w,
          ),
          child: const CircleAvatar(
            backgroundColor: CustomColors.skyBlue,
            child: Icon(
              Icons.person,
            ),
          ),
        ),
      ],
      title: Text(
        'Your Flight Booking',
        style: CustomTypography.nameLabel.copyWith(
          color: CustomColors.white,
        ),
      ),
    );
  }
}
