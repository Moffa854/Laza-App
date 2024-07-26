import 'package:flutter/material.dart';

class CustomRowText extends StatelessWidget {
  final String text1;
  final Color color1;
  final FontWeight fontWeight1;
  final double? fontSize1;
  final String text2;
  final Color color2;
  final FontWeight fontWeight2;
  final double? fontSize2;
  final VoidCallback? onTap;
  const CustomRowText({
    super.key,
    required this.text1,
    required this.text2,
    required this.color1,
    required this.fontWeight1,
    this.fontSize1,
    required this.color2,
    required this.fontWeight2,
    this.fontSize2,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: color1,
            fontWeight: fontWeight1,
            fontSize: fontSize1,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: TextStyle(
                fontWeight: fontWeight2, fontSize: fontSize2, color: color2),
          ),
        ),
      ],
    );
  }
}
