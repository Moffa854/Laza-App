import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final Widget iconText;
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.iconText,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        cursorColor: ColorsApp.black,
        style: const TextStyle(
          color: ColorsApp.black,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: ColorsApp.accentblack),
          suffixIcon: iconText,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsApp.accentblack),
          ),
        ),
      ),
    );
  }
}