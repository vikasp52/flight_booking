import 'package:flight_booking/core/assets/assets.dart';
import 'package:flutter/material.dart';

class CutomTextField extends StatelessWidget {
  const CutomTextField({
    super.key,
    this.controller,
    required this.label,
    this.enabled,
    this.readOnly,
    this.onTap,
    this.validator,
    this.initialValue,
    this.icon,
  });

  final TextEditingController? controller;
  final String label;
  final IconData? icon;
  final GestureTapCallback? onTap;
  final bool? enabled;
  final bool? readOnly;
  final String? Function(String?)? validator;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: CustomTypography.hintLabelGrey,
          focusColor: CustomColors.primary,
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: CustomColors.primary,
            ),
          ),
          prefixIconColor: CustomColors.primary,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: CustomColors.primary,
            ),
          ),
        ),
      ),
      child: TextFormField(
        controller: controller,
        enabled: enabled ?? true,
        readOnly: readOnly ?? false,
        onTap: onTap,
        validator: validator,
        initialValue: initialValue,
        decoration: InputDecoration(
          label: Text(
            label,
            style: CustomTypography.textFieldLabel,
          ),
          prefixIcon: icon == null
              ? null
              : Icon(
                  icon,
                ),
        ),
      ),
    );
  }
}
