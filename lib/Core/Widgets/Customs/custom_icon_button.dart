import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onpressed;
  final Color backgroundColor;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onpressed, required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      style:  ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(backgroundColor)),
      onPressed: onpressed,
      icon: icon,
    );
  }
}
