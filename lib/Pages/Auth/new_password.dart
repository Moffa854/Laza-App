import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Widgets/Customs/custom_contaner_bottom.dart';
import 'package:laza_app_test/Widgets/Customs/custom_rich_text.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_form_feild.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_top.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: CustomTextTop(text: 'New Password'),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.5,
            right: MediaQuery.of(context).size.width / 30,
            left: MediaQuery.of(context).size.width / 30,
            child: Column(
              children: [
                const CustomTextFormField(
                  labelText: 'Password',
                  iconText: Text(''),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                const CustomTextFormField(
                  labelText: 'Confirm Password',
                  iconText: Text(''),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.23,
            left: MediaQuery.of(context).size.width / 3,
            child: CustomRichText(
              color1: ColorsApp.accentblack,
              color2: ColorsApp.black,
              text1: 'Please write your new password.',
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
              text: 'Reset Password',
              onPereesed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
