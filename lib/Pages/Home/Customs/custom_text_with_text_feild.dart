import 'package:flutter/material.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_text_form_feild_search.dart';

class CustomTextWithTextFeild extends StatelessWidget {
  final String text;
  final String hintText;
  final int ?maxLines;
  final int ?minLines;  
  const CustomTextWithTextFeild({
    super.key, required this.text, required this.hintText, this.maxLines, this.minLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        CustomTextFeildSearch(
          hintText: hintText,
          maxLines:maxLines ??1,
          minLines: minLines??1,
        )
      ],
    );
  }
}
