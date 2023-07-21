import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flight_booking/features/flight_booking/presentation/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightBooking extends StatelessWidget {
  const FlightBooking({super.key, required this.travellerCount});
  final int travellerCount;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          90.h,
        ),
        child: const AppBarFlightBooking(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 12.h,
        ),
        child: Column(
          children: [
            const Row(
              children: [
                CustomStepper(
                  label: 'Customized',
                  iconData: Icons.card_travel,
                  backgroundColor: CustomColors.primary,
                  borderColor: CustomColors.primary,
                  iconColor: CustomColors.white,
                ),
                CustomDivider(),
                CustomStepper(
                  label: 'Passengers Info',
                  iconData: Icons.people_alt,
                  backgroundColor: CustomColors.white,
                  borderColor: CustomColors.primary,
                  iconColor: CustomColors.primary,
                ),
                CustomDivider(),
                CustomStepper(
                  label: 'Payment',
                  iconData: Icons.credit_card,
                  backgroundColor: CustomColors.white,
                  borderColor: CustomColors.hintText,
                  iconColor: CustomColors.hintText,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: travellerCount,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 10.h,
                ),
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Traveler ${index + 1}:',
                          style: CustomTypography.nameLabel,
                        ),
                        const Divider(
                          color: CustomColors.primary,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CutomTextField(
                                controller: controller,
                                label: 'Full Name *',
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Expanded(
                              child: CutomTextField(
                                controller: controller,
                                label: 'Last Name *',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CutomTextField(
                                controller: controller,
                                label: 'Gender',
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Expanded(
                              child: CutomTextField(
                                controller: controller,
                                label: 'Date Of Birth',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        CutomTextField(
                          controller: controller,
                          label: 'Nationality',
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        CutomTextField(
                          controller: controller,
                          label: 'Email *',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Booking confirmation will be sent to this email address.',
                          style: CustomTypography.flightType,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Passport Details',
                          style: CustomTypography.flightNameLabel.copyWith(
                            color: CustomColors.primary,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Please enter details exactly as they appear on your passport/travel document.',
                          style: CustomTypography.flightType,
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CutomTextField(
                                controller: controller,
                                label: 'Passport Number *',
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Expanded(
                              child: CutomTextField(
                                controller: controller,
                                label: 'Date Of Birth',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
