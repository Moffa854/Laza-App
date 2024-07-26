

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';

class CustomContaner extends StatefulWidget {
  final Color background;
  final String text;
  final String image;
  const CustomContaner(
      {super.key,
      required this.background,
      required this.text,
      required this.image});

  @override
  State<CustomContaner> createState() => _CustomContanerState();
}

class _CustomContanerState extends State<CustomContaner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
        color: widget.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/svg/${widget.image}.svg',
            width: MediaQuery.of(context).size.width / 20,
            height: MediaQuery.of(context).size.width / 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            widget.text,
            style: const TextStyle(
              color: ColorsApp.white,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }
}