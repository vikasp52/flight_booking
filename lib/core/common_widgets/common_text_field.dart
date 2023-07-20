import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required String lebel,
    required TextEditingController controller,
    required String hintText,
    String? Function(String?)? validator,
    bool? obscureText,
  })  : _lebel = lebel,
        _controller = controller,
        _obscureText = obscureText,
        _hintText = hintText,
        _validator = validator;

  final String _lebel;
  final TextEditingController _controller;
  final String _hintText;
  final bool? _obscureText;
  final String? Function(String?)?  _validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _lebel,
          style: CustomTypography.textFieldLabelBlack,
        ),
        SizedBox(
          height: 5.h,
        ),
        TextFormField(
          controller: _controller,
          validator: _validator,
          obscureText: _obscureText ?? false,
          decoration: InputDecoration(
            hintText: _hintText,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
