import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';

class CustomTextTop extends StatefulWidget {
  final String text;
  const CustomTextTop({
    super.key, required this.text,
  });

  @override
  State<CustomTextTop> createState() => _CustomTextTopState();
}

class _CustomTextTopState extends State<CustomTextTop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
      child: Text(
        widget.text,
        style: const TextStyle(
          color: ColorsApp.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
