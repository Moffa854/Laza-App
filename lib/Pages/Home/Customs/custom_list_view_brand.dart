import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';

class CustomListViewBrand extends StatelessWidget {
  const CustomListViewBrand({
    super.key,
    required this.imagestypesBrand,
    required this.nameBrand,
  });

  final List<String> imagestypesBrand;
  final List<String> nameBrand;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Transform.translate(
            offset: const Offset(-10, 0),
            child: Container(
              width: MediaQuery.of(context).size.width / 3.3,
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xfff5f6fa),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.5),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset(
                      imagestypesBrand[index],
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Text(
                    nameBrand[index],
                    style: const TextStyle(
                      color: ColorsApp.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}