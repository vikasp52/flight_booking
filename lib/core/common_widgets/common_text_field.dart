import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required String lebel,
    required TextEditingController controller,
    required String hintText,
    String? prefixText,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
    int? maxLength,
    bool? obscureText,
  })  : _lebel = lebel,
        _controller = controller,
        _obscureText = obscureText,
        _hintText = hintText,
        _prefixText = prefixText,
        _keyboardType = keyboardType,
        _maxLength = maxLength,
        _validator = validator;

  final String _lebel;
  final TextEditingController _controller;
  final String _hintText;
  final String? _prefixText;
  final bool? _obscureText;
  final TextInputType? _keyboardType;
  final int? _maxLength;
  final String? Function(String?)? _validator;

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
          keyboardType: _keyboardType,
          maxLength: _maxLength,
          decoration: InputDecoration(
            hintText: _hintText,
            counterText: "",
            prefixText: _prefixText,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
