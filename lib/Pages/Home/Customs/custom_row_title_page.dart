import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Core/Widgets/Customs/custom_icon_button.dart';

class CustomRowTitlePage extends StatelessWidget {
  final String title;
  const CustomRowTitlePage({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20),
      child: Row(
        children: [
          CustomIconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 35,
            ),
            onpressed: () {
              Navigator.of(context).pop();
            },
            backgroundColor: ColorsApp.white,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.9,
          ),
           Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: ColorsApp.black,
            ),
          )
        ],
      ),
    );
  }
}
