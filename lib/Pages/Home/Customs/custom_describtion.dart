import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Widgets/Customs/custom_rich_text.dart';

class CustomDescription extends StatelessWidget {
  const CustomDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Description',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: CustomRichText(
            text1:
                'The Nike Throwback Pullover Hoodie is made\nfrom premium French terry fabric that blends a\nperformance feel with ',
            text2: ' Read More..',
            fontWeight1: FontWeight.w300,
            fontWeight2: FontWeight.w600,
            onTap1: () {},
            onTap2: () {},
            color1: ColorsApp.grey,
            color2: ColorsApp.black,
            textAlign: TextAlign.start,
            fontsize1: 18,
            fontsize2: 18,
          ),
        ),
      ],
    );
  }
}