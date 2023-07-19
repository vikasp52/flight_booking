import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flight_booking/features/home/presentation/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final flyingFromController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 22.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: CustomColors.skyBlue,
                          child: Icon(
                            Icons.person,
                          ),
                        ),
                        title: Text(
                          'Welcome 👋',
                          style: CustomTypography.accountCheckLabel,
                        ),
                        subtitle: Text(
                          'Vikas Pandey',
                          style: CustomTypography.nameLabel,
                        ),
                      ),
                    ),
                    const CustomMenuIcons(
                      icon: Icons.notifications_none,
                    ),
                    const CustomMenuIcons(
                      icon: Icons.menu,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                  ],
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        Expanded(
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
                                    height: 22.h,
                                  ),
                                  Text(
                                    'Where’s Your',
                                    style:
                                        CustomTypography.headingWhite.copyWith(
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
                        ),
                        Expanded(
                          flex: 7,
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                ),
                                child: SingleChildScrollView(
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            'Business',
                                            'One Way',
                                            'Round Trip'
                                          ]
                                              .map(
                                                (e) => Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.w),
                                                  child: Chip(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10.w),
                                                    label: Text(
                                                      e,
                                                      style: CustomTypography
                                                          .flightTypeLabel
                                                          .copyWith(
                                                        color: (e == 'One Way')
                                                            ? CustomColors.white
                                                            : CustomColors
                                                                .black,
                                                      ),
                                                    ),
                                                    backgroundColor: (e ==
                                                            'One Way')
                                                        ? CustomColors.primary
                                                        : CustomColors.white,
                                                    side: const BorderSide(
                                                      color:
                                                          CustomColors.skyBlue,
                                                    ),
                                                    elevation: 8,
                                                    shadowColor:
                                                        CustomColors.primary,
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: CutomTextField(
                                                controller:
                                                    flyingFromController,
                                                label: 'Flying From',
                                                icon: Icons
                                                    .flight_takeoff_outlined,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            Expanded(
                                              child: CutomTextField(
                                                controller:
                                                    flyingFromController,
                                                label: 'Flying To',
                                                icon:
                                                    Icons.flight_land_outlined,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 14.h,
                                        ),
                                        CutomTextField(
                                          controller: flyingFromController,
                                          label: 'Departure',
                                          icon: Icons.date_range,
                                        ),
                                        SizedBox(
                                          height: 14.h,
                                        ),
                                        GestureDetector(
                                          onTap: () => showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (context) => Padding(
                                              padding: EdgeInsets.all(12.w),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 20.h,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Select Traveller & Class',
                                                        style: CustomTypography
                                                            .buttonTextWhite
                                                            .copyWith(
                                                          color: CustomColors
                                                              .black,
                                                        ),
                                                      ),
                                                      IconButton(
                                                        icon: const Icon(
                                                          Icons.close,
                                                          color: CustomColors
                                                              .black,
                                                        ),
                                                        onPressed: () =>
                                                            Navigator.of(
                                                                    context)
                                                                .pop(),
                                                      ),
                                                    ],
                                                  ),
                                                  const Divider(
                                                    color: CustomColors.primary,
                                                  ),
                                                  const NoOfTraveller(
                                                    title: 'Adult',
                                                    subTitle: '12 yrs & above',
                                                    total: '3',
                                                  ),
                                                  const NoOfTraveller(
                                                    title: 'Children',
                                                    subTitle: '2 - 12 yrs',
                                                    total: '3',
                                                  ),
                                                  const NoOfTraveller(
                                                    title: 'Infant',
                                                    subTitle: 'Under 2 yrs',
                                                    total: '3',
                                                   ),
                                                  const Divider(
                                                    color: CustomColors.primary,
                                                  ),
                                                  RadioListTile(
                                                    value: 1,
                                                    groupValue: 2,
                                                    title: const Text(
                                                        'Premium Economy'),
                                                    onChanged: (value) {},
                                                  ),
                                                  RadioListTile(
                                                    value: 2,
                                                    groupValue: 2,
                                                    title:
                                                        const Text('Economy'),
                                                    onChanged: (value) {},
                                                  ),
                                                  RadioListTile(
                                                    value: 3,
                                                    groupValue: 2,
                                                    title: const Text(
                                                        'Business Class'),
                                                    onChanged: (value) {},
                                                  ),
                                                  RadioListTile(
                                                    value: 4,
                                                    groupValue: 2,
                                                    title: const Text('First'),
                                                    onChanged: (value) {},
                                                  ),
                                                  const Spacer(),
                                                  ElevatedButton(
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'Done',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          child: CutomTextField(
                                            controller: flyingFromController,
                                            label: 'Travellers & Class',
                                            enabled: false,
                                            icon: Icons.person_2,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 14.h,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: const Text(
                                            'Search',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 24.h,
                                        ),
                                        Text(
                                          'Best Places',
                                          style: CustomTypography.nameLabel,
                                        ),
                                        Expanded(
                                            child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 10,
                                          itemBuilder: (context, index) =>
                                              Padding(
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "⭐ 4.9",
                                                          style: CustomTypography
                                                              .textFieldLabel,
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
                                                      style: CustomTypography
                                                          .accountCheckLabel,
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
                                ),
                              ),
                              const Center(
                                child: Text('Hotels'),
                              ),
                              const Center(
                                child: Text('Car Rental'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
