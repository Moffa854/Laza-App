import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatefulWidget {
  final String text1;
  final String text2;
  final FontWeight fontWeight1;
  final FontWeight fontWeight2;
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  final Color color1;
  final Color color2;
  final TextAlign? textAlign;
  final double? fontsize1;
   final double? fontsize2;
  const CustomRichText({
    super.key,
    required this.text1,
    required this.text2,
    required this.fontWeight1,
    required this.fontWeight2,
    required this.onTap1,
    required this.onTap2,
    required this.color1,
    required this.color2,
    this.textAlign, this.fontsize1, this.fontsize2,
  });

  @override
  State<CustomRichText> createState() => _CustomRichTextState();
}

class _CustomRichTextState extends State<CustomRichText> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: widget.textAlign ?? TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
              text: widget.text1,
              style: TextStyle(
                color: widget.color1,
                fontWeight: widget.fontWeight1,
                fontSize: widget.fontsize1??18,
                wordSpacing: 1,
                letterSpacing: 1,
              ),
              recognizer: TapGestureRecognizer()..onTap = widget.onTap1),
          TextSpan(
            text: widget.text2,
            style: TextStyle(
              color: widget.color2,
              fontWeight: widget.fontWeight2,
              fontSize: widget.fontsize2??18,
            ),
            recognizer: TapGestureRecognizer()..onTap = widget.onTap2,
          ),
        ],
      ),
    );
  }
}
