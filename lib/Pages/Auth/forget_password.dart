import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Pages/Auth/virvaction_code.dart';
import 'package:laza_app_test/Widgets/Customs/custom_contaner_bottom.dart';
import 'package:laza_app_test/Widgets/Customs/custom_img.dart';
import 'package:laza_app_test/Widgets/Customs/custom_rich_text.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_form_feild.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_top.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: CustomTextTop(text: 'Forgot Password'),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 6.6,
            left: MediaQuery.of(context).size.height / 15,
            child: const CustomImg(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.65,
            right: MediaQuery.of(context).size.width / 30,
            left: MediaQuery.of(context).size.width / 30,
            child: const CustomTextFormField(
              labelText: 'Email Address',
              iconText: Text(''),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.27,
            left: MediaQuery.of(context).size.width / 3.85,
            child: CustomRichText(
              color1: ColorsApp.accentblack,
              color2: ColorsApp.black,
              text1:
                  'Please write your email to receive a\nconfirmation code to set a new password.',
              text2: '',
              fontWeight1: FontWeight.w300,
              fontWeight2: FontWeight.normal,
              onTap1: () {},
              onTap2: () {},
            ),
          ),
          Positioned(
            bottom: 0,
            child: CustomContanerButtom(
              text: 'Confirm Mail',
              onPereesed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VirvactionCod(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
