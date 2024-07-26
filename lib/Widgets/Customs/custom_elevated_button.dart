

import 'package:flutter/material.dart';


class CustomElevatedButton extends StatefulWidget {
  final String name;
  final Color background;
  final Color textcolor;
  final VoidCallback onpressed;
  const CustomElevatedButton(
      {super.key,
      required this.name,
      required this.background,
      required this.textcolor, required this.onpressed});

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: const Size(152 * 2, 100),
      ),
      onPressed:widget.onpressed ,
      child: Text(
        widget.name,
        style: TextStyle(
          color: widget.textcolor,
          fontSize: 16,
        ),
      ),
    );
  }
}