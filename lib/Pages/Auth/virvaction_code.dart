import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Pages/Auth/new_password.dart';
import 'package:laza_app_test/Widgets/Customs/custom_contaner_bottom.dart';
import 'package:laza_app_test/Widgets/Customs/custom_img.dart';
import 'package:laza_app_test/Widgets/Customs/custom_rich_text.dart';
import 'package:laza_app_test/Widgets/Customs/custom_text_top.dart';
import 'package:pinput/pinput.dart';

class VirvactionCod extends StatefulWidget {
  const VirvactionCod({super.key});

  @override
  State<VirvactionCod> createState() => _VirvactionCodState();
}

class _VirvactionCodState extends State<VirvactionCod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: CustomTextTop(text: 'Verification Code'),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 6.6,
            left: MediaQuery.of(context).size.height / 15,
            child: const CustomImg(),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 1.75,
              left: MediaQuery.of(context).size.width / 20,
              right: MediaQuery.of(context).size.width / 20,
              child: Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                length: 4,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus!.unfocus();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter The Verification Code';
                  }
                  return null;
                },
                defaultPinTheme: PinTheme(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                  height: 200,
                  width: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: ColorsApp.black,
                    ),
                  ),
                ),
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.24,
            left: MediaQuery.of(context).size.width / 3,
            child: CustomRichText(
              color1: ColorsApp.black,
              color2: ColorsApp.accentblack,
              text1: '00:20 ',
              text2: 'resend confirmation code.',
              fontWeight1: FontWeight.w600,
              fontWeight2: FontWeight.w300,
              onTap1: () {},
              onTap2: () {},
            ),
          ),
          Positioned(
            bottom: 0,
            child: CustomContanerButtom(
              text: 'Confirm Code',
              onPereesed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NewPassword(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
