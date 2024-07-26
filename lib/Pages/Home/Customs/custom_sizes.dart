import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Pages/Home/size_guide_page.dart';

class CustomSizes extends StatelessWidget {
  const CustomSizes({
    super.key,
    required this.sizes,
  });

  final List<String> sizes;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Transform.translate(
            offset: const Offset(-58, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SizeGuidePage(
                      titleSize: sizes[index],
                    ),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal:
                        MediaQuery.of(context).size.width /
                            14.3),
                width: 65,
                height: 25,
                decoration: BoxDecoration(
                  color: ColorsApp.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    sizes[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}