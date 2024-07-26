import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';

class CustomRowSwitch extends StatefulWidget {
  final String text;
  const CustomRowSwitch({
    super.key,
    required this.text,
  });

  @override
  State<CustomRowSwitch> createState() => _CustomRowSwitchState();
}

class _CustomRowSwitchState extends State<CustomRowSwitch> {
  bool isremember = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
            color: ColorsApp.black,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        Switch(
          value: isremember,
          onChanged: (value) {
            setState(() {
              isremember = value;
            });
          },
          inactiveTrackColor: ColorsApp.accentblack,
          inactiveThumbColor: ColorsApp.white,
          activeTrackColor: ColorsApp.green,
          activeColor: ColorsApp.white,
        )
      ],
    );
  }
}
