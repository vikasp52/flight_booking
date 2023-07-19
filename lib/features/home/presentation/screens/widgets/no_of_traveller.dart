import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoOfTraveller extends StatelessWidget {
  const NoOfTraveller({
    super.key,
    required this.title,
    required this.subTitle,
    required this.total,
  });

  final String title;
  final String subTitle;
  final String total;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Card(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: CustomColors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 18.h,
              ),
              child: Text(
                total,
                style: CustomTypography.nameLabel,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.remove,
                color: CustomColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
