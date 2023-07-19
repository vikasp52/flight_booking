import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';


class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: CustomColors.white,
      side: const BorderSide(
        color: CustomColors.skyBlue,
      ),
      label: Row(
        children: [
          Text(
            title,
            style: CustomTypography.accountCheckLabel,
          ),
          const Icon(
            Icons.arrow_drop_down,
            color: CustomColors.black,
          )
        ],
      ),
    );
  }
}
