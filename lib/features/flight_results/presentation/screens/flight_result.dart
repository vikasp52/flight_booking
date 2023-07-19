import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/features/flight_results/presentation/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightResultScreen extends StatelessWidget {
  const FlightResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: CustomColors.primary,
              child: Column(
                children: [
                  SizedBox(
                    height: 38.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: CustomColors.white,
                        ),
                      ),
                      Text(
                        'DXB ⇆ LEH',
                        style: CustomTypography.headingBlue.copyWith(
                          color: CustomColors.white,
                          fontSize: 26.sp,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_document,
                          color: CustomColors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Sat, 13 Apr - Tue, 6 May',
                    style: CustomTypography.textFieldLabelBlack.copyWith(
                      color: CustomColors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.person_2,
                          color: CustomColors.white,
                        ),
                        Text(
                          '2 Adults, 3 Children',
                          style: CustomTypography.hintLabelGrey.copyWith(
                            color: CustomColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    '69 flights Available',
                    style: CustomTypography.textFieldLabelBlack,
                  ),
                  trailing: const CircleAvatar(
                    backgroundColor: CustomColors.primary,
                    child: Icon(
                      Icons.filter_list,
                      color: CustomColors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  child: Row(
                    children: [
                      const CustomChip(
                        title: 'Cheap Price',
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const CustomChip(
                        title: 'Stop Included',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    itemBuilder: (context, index) => Card(
                      child: Padding(
                        padding: EdgeInsets.all(
                          10.w,
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const CircleAvatar(
                                child: Icon(Icons.flag),
                              ),
                              title: Text(
                                'Emirates',
                                style: CustomTypography.flightNameLabel,
                              ),
                              trailing: Text(
                                '\$520.43',
                                style: CustomTypography.flightPrice,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 28.w,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'DXB',
                                        style:
                                            CustomTypography.accountCheckLabel,
                                      ),
                                      const Spacer(),
                                      Text(
                                        'LEH',
                                        style:
                                            CustomTypography.accountCheckLabel,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const LocationPoint(),
                                      Expanded(
                                        child: Row(
                                          children: List.generate(
                                            150 ~/ 2,
                                            (index) {
                                              if (index % 2 == 0) {
                                                return Expanded(
                                                  child: Container(
                                                    color: Colors.transparent,
                                                    height: 2.h,
                                                  ),
                                                );
                                              } else if (index ==
                                                  (150 ~/ 2) ~/ 2) {
                                                return Flexible(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 8.h,
                                                    ),
                                                    child: Text(
                                                      '✈︎',
                                                      style: TextStyle(
                                                        color: CustomColors
                                                            .primary,
                                                        fontSize: 30.sp,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                return Expanded(
                                                  child: Container(
                                                    color: CustomColors.primary,
                                                    height: 2.h,
                                                  ),
                                                );
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                      const LocationPoint(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '09:35',
                                        style: CustomTypography
                                            .accountCheckLabel
                                            .copyWith(
                                          color: CustomColors.grey,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '11:20',
                                        style: CustomTypography
                                            .accountCheckLabel
                                            .copyWith(
                                          color: CustomColors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Divider(
                                    color: CustomColors.skyBlue,
                                    thickness: 2.h,
                                  ),
                                  Row(
                                    children: [
                                      Chip(
                                        backgroundColor: CustomColors.skyBlue,
                                        label: Text(
                                          'Economy Light',
                                          style: CustomTypography.flightType,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Chip(
                                        backgroundColor: CustomColors.skyBlue,
                                        label: Text(
                                          '💼 1 x 20 kg',
                                          style: CustomTypography.flightType,
                                        ),
                                      ),
                                      const Spacer(),
                                      Chip(
                                        backgroundColor: CustomColors.primary,
                                        label: Text(
                                          'Select Flight',
                                          style: CustomTypography.flightType
                                              .copyWith(
                                            color: CustomColors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
