

import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flight_booking/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlyingToAndFrom extends StatelessWidget {
  const FlyingToAndFrom({
    super.key,
    required TextEditingController flyingFromController,
    required TextEditingController flyingToController,
  })  : _flyingFromController = flyingFromController,
        _flyingToController = flyingToController;

  final TextEditingController _flyingFromController;
  final TextEditingController _flyingToController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CutomTextField(
            controller: _flyingFromController,
            label: 'Flying From',
            icon: Icons.flight_takeoff_outlined,
            validator: (value) => CustomValidation.emptyValidation(
              value,
              'Please enter flying from',
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Expanded(
          child: CutomTextField(
            controller: _flyingToController,
            label: 'Flying To',
            icon: Icons.flight_land_outlined,
            validator: (value) => CustomValidation.emptyValidation(
              value,
              'Please enter flying to',
            ),
          ),
        ),
      ],
    );
  }
}