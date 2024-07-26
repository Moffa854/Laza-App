import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_app_test/Core/Constant/svg_app.dart';

class CustomImg extends StatelessWidget {
  const CustomImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgApp.img,
      width: MediaQuery.of(context).size.width * 0.8,
    );
  }
}