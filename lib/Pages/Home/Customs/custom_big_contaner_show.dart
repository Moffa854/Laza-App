import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Core/Widgets/Customs/custom_icon_button.dart';
import 'package:laza_app_test/Pages/Home/show_details.dart';

class CustomBigContanerShow extends StatelessWidget {
  const CustomBigContanerShow({
    super.key,
    required this.widget,
  });

  final ShowDetails widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2.1,
      decoration: BoxDecoration(
        color: ColorsApp.havywhite,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(
            widget.imagesDetails,
          ),
        ),
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8, vertical: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    icon: const Icon(Icons.arrow_back),
                    onpressed: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: Colors.white,
                  ),
                  CustomIconButton(
                    icon: const Icon(Icons.shopping_bag_outlined),
                    onpressed: () {},
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
                height:
                    MediaQuery.of(context).size.height / 3.111),
            Container(
              width: 120,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: ColorsApp.havywhite,
              ),
              child: Transform.translate(
                offset: const Offset(0, -20),
                child: Image.asset(
                  'assets/images/Vector@2x.png',
                  width: 10,
                  height: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}