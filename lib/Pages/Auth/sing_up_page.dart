import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Widgets/Customs/custom_contaner_bottom.dart';
import 'package:laza_app_test/Widgets/Customs/custom_row_switch.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_form_feild.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_top.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: CustomTextTop(
              text: 'Sign Up',
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                const CustomTextFormField(
                  labelText: 'Email Address',
                  iconText: Icon(
                    Icons.check,
                    size: 25,
                    color: ColorsApp.green,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.41,
            right: MediaQuery.of(context).size.width / 30,
            left: MediaQuery.of(context).size.width / 30,
            child: const CustomRowSwitch(
              text: 'Remember me',
            ),
          ),
          Positioned(
            bottom: 0,
            child: CustomContanerButtom(
              text: 'Sign Up',
              onPereesed: () {},
            ),
          )
        ],
      ),
    );
  }
}
