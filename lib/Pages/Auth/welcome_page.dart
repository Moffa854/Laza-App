import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Pages/App/app_page.dart';
import 'package:laza_app_test/Pages/Auth/forget_password.dart';
import 'package:laza_app_test/Widgets/Customs/custom_contaner_bottom.dart';
import 'package:laza_app_test/Widgets/Customs/custom_rich_text.dart';
import 'package:laza_app_test/Widgets/Customs/custom_row_switch.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_form_feild.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_top.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: CustomTextTop(text: 'Welcome'),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 7.5,
            left: MediaQuery.of(context).size.height / 5.2,
            child: const Text(
              'Please enter your data to continue',
              style: TextStyle(
                color: ColorsApp.accentblack,
                fontWeight: FontWeight.w300,
                letterSpacing: 1,
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.5,
            right: MediaQuery.of(context).size.width / 30,
            left: MediaQuery.of(context).size.width / 30,
            child: Column(
              children: [
                const CustomTextFormField(
                  labelText: 'Username',
                  iconText: Icon(
                    Icons.check,
                    size: 25,
                    color: ColorsApp.green,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                const CustomTextFormField(
                  labelText: 'Password',
                  iconText: Text(
                    'Strong',
                    style: TextStyle(
                      color: ColorsApp.green,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.7,
            right: MediaQuery.of(context).size.width / 30,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ForgetPassword(),
                  ),
                );
              },
              child: const Text(
                'Forgot password?',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: ColorsApp.red,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.41,
            right: MediaQuery.of(context).size.width / 30,
            left: MediaQuery.of(context).size.width / 30,
            child: const CustomRowSwitch(text: 'Remember me'),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 5.70,
            right: 0,
            left: MediaQuery.of(context).size.width / 22,
            child: CustomRichText(
              color1: ColorsApp.accentblack,
              color2: ColorsApp.black,
              text1:
                  'By connecting your account confirm that you agree \nwith our',
              text2: ' Term and Condition',
              fontWeight1: FontWeight.w300,
              fontWeight2: FontWeight.w600,
              onTap1: () {},
              onTap2: () {},
            ),
          ),
          Positioned(
            bottom: 0,
            child: CustomContanerButtom(
              text: 'Login',
              onPereesed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const AppPage(),
                  ),
                  (route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
