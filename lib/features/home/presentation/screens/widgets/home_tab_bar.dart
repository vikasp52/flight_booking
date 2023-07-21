import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/features/home/presentation/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: CustomColors.primary,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Where’s Your',
                style: CustomTypography.headingWhite.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Next Destination?',
                style: CustomTypography.headingWhite,
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                  color: CustomColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      14,
                    ),
                    topRight: Radius.circular(
                      14,
                    ),
                  ),
                ),
                child: const TabBar(
                  indicatorColor: CustomColors.primary,
                  tabs: [
                    CustomTab(
                      flight: Icons.flight_takeoff,
                      color: CustomColors.primary,
                      labelColor: CustomColors.black,
                      label: 'Flights',
                    ),
                    CustomTab(
                      flight: Icons.business_outlined,
                      color: CustomColors.hintText,
                      labelColor: CustomColors.hintText,
                      label: 'Hotels',
                    ),
                    CustomTab(
                      flight: Icons.car_rental,
                      color: CustomColors.hintText,
                      labelColor: CustomColors.hintText,
                      label: 'Car Rental',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}