import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/core/routing/routing.dart';
import 'package:flight_booking/features/flight_results/presentation/cubit/flight_result_cubit.dart';
import 'package:flight_booking/features/flight_results/presentation/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightResultScreen extends StatelessWidget {
  const FlightResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FlightResultCubit>();
    return Scaffold(
      body: BlocBuilder<FlightResultCubit, FlightResultState>(
        builder: (context, state) {
          return Column(
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
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: CustomColors.white,
                            ),
                          ),
                          Text(
                            '${cubit.flightSearch.airportOriginCode?.toUpperCase()} ⇆ ${cubit.flightSearch.airportDestinationCode?.toUpperCase()}',
                            style: CustomTypography.headingBlue.copyWith(
                              color: CustomColors.white,
                              fontSize: 26.sp,
                            ),
                          ),
                          IconButton(
                            onPressed: () => Navigator.pop(context),
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
                        cubit.buildDateText(
                          cubit.flightSearch.departureDate ?? '',
                          cubit.flightSearch.returnDate ?? '',
                        ),
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
                              Icons.person,
                              color: CustomColors.white,
                            ),
                            Text(
                              cubit.buildPassengerText(
                                cubit.flightSearch.adults ?? 0,
                                cubit.flightSearch.childs ?? 0,
                                cubit.flightSearch.infants ?? 0,
                              ),
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
                child: state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (message) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline,
                          color: CustomColors.error,
                          size: 60.h,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          message,
                          style: CustomTypography.accountCheckLabel.copyWith(
                            color: CustomColors.error,
                          ),
                        ),
                      ],
                    ),
                  ),
                  loaded: (flightResult) => Column(
                    children: [
                      ListTile(
                        title: Text(
                          '${flightResult.data?.flights?.length} flights Available',
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
                          itemCount: flightResult.data?.flights?.length,
                          itemBuilder: (context, index) {
                            final flight = flightResult.data?.flights![index];
                            return Padding(
                              padding: EdgeInsets.all(8.h),
                              child: InkWell(
                                onTap: () => RouteGenerator.pushName(
                                  routeName: RouteGenerator.flightBookingRoute,
                                  argument: cubit.flightSearch.adults! +
                                      cubit.flightSearch.childs! +
                                      cubit.flightSearch.infants!,
                                ),
                                child: Card(
                                  elevation: 8.0,
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
                                            flight
                                                    ?.originDestinationOptions!
                                                    .first
                                                    .tourSegments!
                                                    .first
                                                    .airlineName ??
                                                '',
                                            style: CustomTypography
                                                .flightNameLabel,
                                          ),
                                          trailing: Text(
                                            '${flight?.fareTotal?.total ?? ''}',
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
                                                    flight
                                                            ?.originDestinationOptions!
                                                            .first
                                                            .tourSegments!
                                                            .first
                                                            .departureAirportCode ??
                                                        '',
                                                    style: CustomTypography
                                                        .accountCheckLabel,
                                                  ),
                                                  const Spacer(),
                                                  Text(
                                                    flight
                                                            ?.originDestinationOptions!
                                                            .first
                                                            .tourSegments!
                                                            .first
                                                            .arrivalAirportCode ??
                                                        '',
                                                    style: CustomTypography
                                                        .accountCheckLabel,
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
                                                                color: Colors
                                                                    .transparent,
                                                                height: 2.h,
                                                              ),
                                                            );
                                                          } else if (index ==
                                                              (150 ~/ 2) ~/ 2) {
                                                            return Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  bottom: 8.h,
                                                                ),
                                                                child: Text(
                                                                  '✈︎',
                                                                  style:
                                                                      TextStyle(
                                                                    color: CustomColors
                                                                        .primary,
                                                                    fontSize:
                                                                        30.sp,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return Expanded(
                                                              child: Container(
                                                                color:
                                                                    CustomColors
                                                                        .primary,
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
                                                    flight
                                                            ?.originDestinationOptions!
                                                            .first
                                                            .tourSegments!
                                                            .first
                                                            .departureDateTime ??
                                                        '',
                                                    style: CustomTypography
                                                        .accountCheckLabel
                                                        .copyWith(
                                                      color: CustomColors.grey,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Text(
                                                    flight
                                                            ?.originDestinationOptions!
                                                            .first
                                                            .tourSegments!
                                                            .first
                                                            .arrivalDateTime ??
                                                        '',
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
                                                    backgroundColor:
                                                        CustomColors.skyBlue,
                                                    label: Text(
                                                      'Economy Light',
                                                      style: CustomTypography
                                                          .flightType,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Chip(
                                                    backgroundColor:
                                                        CustomColors.skyBlue,
                                                    label: Text(
                                                      '💼 1 x 20 kg',
                                                      style: CustomTypography
                                                          .flightType,
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  Chip(
                                                    backgroundColor:
                                                        CustomColors.primary,
                                                    label: Text(
                                                      'Select Flight',
                                                      style: CustomTypography
                                                          .flightType
                                                          .copyWith(
                                                        color:
                                                            CustomColors.white,
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
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
