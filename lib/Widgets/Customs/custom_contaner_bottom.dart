import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';

class CustomContanerButtom extends StatefulWidget {
  final String text;
  final VoidCallback onPereesed;
  const CustomContanerButtom({
    super.key,
    required this.text,
    required this.onPereesed,
  });

  @override
  State<CustomContanerButtom> createState() => _CustomContanerButtomState();
}

class _CustomContanerButtomState extends State<CustomContanerButtom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 7,
      decoration: const BoxDecoration(
        color: ColorsApp.purple,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: TextButton(
              onPressed: widget.onPereesed,
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: ColorsApp.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              )),
        ),
      ),
    );
  }
}
