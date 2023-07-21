
import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/features/home/presentation/cubit/flight_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightType extends StatelessWidget {
  const FlightType({
    super.key,
    required this.cubit,
  });

  final FlightDataCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: ['Business', 'One Way', 'Round Trip']
          .map(
            (e) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: InkWell(
                onTap: () => cubit.changeJourneyType(
                  e,
                ),
                child: BlocBuilder<FlightDataCubit, FlightDataState>(
                  builder: (context, state) {
                    return Chip(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      label: Text(
                        e,
                        style: CustomTypography.flightTypeLabel.copyWith(
                          color: (e == state.journeyType)
                              ? CustomColors.white
                              : CustomColors.black,
                        ),
                      ),
                      backgroundColor: (e == state.journeyType)
                          ? CustomColors.primary
                          : CustomColors.white,
                      side: const BorderSide(
                        color: CustomColors.skyBlue,
                      ),
                      elevation: 8,
                      shadowColor: CustomColors.primary,
                    );
                  },
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
