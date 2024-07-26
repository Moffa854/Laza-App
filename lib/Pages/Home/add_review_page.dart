import 'package:flutter/material.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_row_title_page.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_text_with_text_feild.dart';

class AddReviewPage extends StatelessWidget {
  const AddReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomRowTitlePage(
            title: 'Add Review',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                CustomTextWithTextFeild(
                  hintText: 'Type your name',
                  text: 'Name',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextWithTextFeild(
                  hintText: 'Describe your experience?',
                  text: 'How was your experience ?',
                  maxLines: 6,
                  minLines: 6,
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
