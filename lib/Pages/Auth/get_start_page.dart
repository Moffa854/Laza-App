import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Pages/Auth/sing_up_page.dart';
import 'package:laza_app_test/Pages/Auth/welcome_page.dart';
import 'package:laza_app_test/Widgets/Customs/custom_contaner.dart';
import 'package:laza_app_test/Widgets/Customs/custom_contaner_bottom.dart';
import 'package:laza_app_test/Widgets/Customs/custom_rich_text.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_top.dart';

class GetStartPage extends StatefulWidget {
  const GetStartPage({super.key});

  @override
  State<GetStartPage> createState() => _GetStartPageState();
}

class _GetStartPageState extends State<GetStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: CustomTextTop(
              text: 'Let’s Get Started',
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.5,
            right: MediaQuery.of(context).size.width / 30,
            left: MediaQuery.of(context).size.width / 30,
            child: const Column(
              children: [
                CustomContaner(
                  text: 'Facebook',
                  background: ColorsApp.blue,
                  image: 'Facebook',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomContaner(
                  text: 'Twitter',
                  background: ColorsApp.lightblue,
                  image: 'Twitter',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomContaner(
                  text: 'Google',
                  background: ColorsApp.red,
                  image: 'Google',
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 5.70,
            right: 0,
            left: MediaQuery.of(context).size.width / 22,
            child: CustomRichText(
              color1: ColorsApp.accentblack,
              color2: ColorsApp.black,
              text1: 'Already have an account?',
              text2: ' Signin',
              fontWeight1: FontWeight.w300,
              fontWeight2: FontWeight.w600,
              onTap1: () {},
              onTap2: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const WelcomePage(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            child: CustomContanerButtom(
              onPereesed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SingUpPage(),
                  ),
                );
              },
              text: 'Create an Account',
            ),
          )
        ],
      ),
    );
  }
}
