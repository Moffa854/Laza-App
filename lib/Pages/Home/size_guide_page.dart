import 'package:flutter/material.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_top.dart';

class SizeGuidePage extends StatelessWidget {
  final String titleSize;
  const SizeGuidePage({super.key, required this.titleSize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextTop(text: titleSize),
            ],
          )
        ],
      ),
    );
  }
}
