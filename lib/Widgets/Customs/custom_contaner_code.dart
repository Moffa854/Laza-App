import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';

class CustomContanerCode extends StatefulWidget {
  final String text;
  const CustomContanerCode({
    super.key,
    required this.text,
  });

  @override
  State<CustomContanerCode> createState() => _CustomContanerCodeState();
}

class _CustomContanerCodeState extends State<CustomContanerCode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      width: MediaQuery.of(context).size.width / 5.1,
      height: MediaQuery.of(context).size.width / 4.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: ColorsApp.accentblack.withOpacity(0.5),
        ),
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
            color: ColorsApp.black,
            fontSize: MediaQuery.of(context).size.width / 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}