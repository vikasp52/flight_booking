
import 'package:flight_booking/core/assets/assets.dart';
import 'package:flight_booking/features/home/presentation/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
