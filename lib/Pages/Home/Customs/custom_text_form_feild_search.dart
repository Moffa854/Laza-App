import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';

class CustomTextFeildSearch extends StatelessWidget {
  final String hintText;
  final Widget? prefixicon;
  final int? maxLines;
  final int? minLines;
  const CustomTextFeildSearch({
    super.key,
    required this.hintText,
    this.prefixicon,
    this.maxLines,
    this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines ?? 1,
      minLines: maxLines ?? 1,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      decoration: InputDecoration(
        prefixIcon: prefixicon,
        hintText: hintText,
        hintStyle:
            const TextStyle(fontWeight: FontWeight.w300, color: ColorsApp.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: const Color(0xfff5f6fa),
      ),
    );
  }
}
