

import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';

class LocationPoint extends StatelessWidget {
  const LocationPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        border: Border.all(
          color: CustomColors.primary,
        ),
      ),
      child: const Icon(
        Icons.fiber_manual_record,
        color: CustomColors.primary,
        size: 10.0,
      ),
    );
  }
}
