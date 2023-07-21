
import 'package:flight_booking/core/common_widgets/common_widgets.dart';
import 'package:flight_booking/core/utils/utils.dart';
import 'package:flight_booking/features/home/presentation/cubit/flight_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';


class DepartureAndArrival extends StatelessWidget {
  const DepartureAndArrival({
    super.key,
    required TextEditingController departureController,
    required this.cubit,
    required TextEditingController returnController,
  })  : _departureController = departureController,
        _returnController = returnController;

  final TextEditingController _departureController;
  final FlightDataCubit cubit;
  final TextEditingController _returnController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CutomTextField(
            controller: _departureController,
            label: 'Departure',
            icon: Icons.date_range,
            validator: (value) => CustomValidation.emptyValidation(
              value,
              'Please select departure date',
            ),
            readOnly: true,
            onTap: () async {
              final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2015, 8),
                  lastDate: DateTime(2101));
              if (picked != null) {
                cubit.selectDeparterDate(
                  picked.millisecondsSinceEpoch.toString(),
                );

                _departureController.text =
                    DateFormat('dd MMM yyyy').format(picked);
              }
            },
          ),
        ),
        SizedBox(
          width: cubit.state.journeyType == 'Round Trip' ? 20.w : 0.0,
        ),
        cubit.state.journeyType == 'Round Trip'
            ? Expanded(
                child: CutomTextField(
                  controller: _returnController,
                  label: 'Return',
                  readOnly: true,
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2015, 8),
                      lastDate: DateTime(2101),
                    );
                    if (picked != null) {
                      cubit.selectReturnDate(
                        picked.millisecondsSinceEpoch.toString(),
                      );

                      _returnController.text = DateFormat(
                        'dd MMM yyyy',
                      ).format(
                        picked,
                      );
                    }
                  },
                  icon: Icons.date_range,
                  validator: (value) => CustomValidation.emptyValidation(
                    value,
                    'Please select return date',
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
