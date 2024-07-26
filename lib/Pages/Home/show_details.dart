import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_big_contaner_show.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_describtion.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_fleece.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_reviews.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_row_text.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_sizes.dart';
import 'package:laza_app_test/Pages/Home/reviews_page.dart';

class ShowDetails extends StatefulWidget {
  final String imagesDetails;
  const ShowDetails({super.key, required this.imagesDetails});

  @override
  State<ShowDetails> createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {
  List<String> imageSize = [
    'assets/images/Rectangle 575.png',
    'assets/images/Rectangle 576.png',
    'assets/images/Rectangle 577.png',
    'assets/images/Rectangle 578.png'
  ];
  List<String> sizes = ['S', 'M', 'L', 'XL', '2XL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CustomBigContanerShow(widget: widget),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Column(
                      children: [
                        const CustomRowText(
                          text1: 'Men\'s Printed Pullover Hoodie',
                          text2: 'Price',
                          color1: ColorsApp.grey,
                          color2: ColorsApp.grey,
                          fontWeight1: FontWeight.w300,
                          fontWeight2: FontWeight.w300,
                        ),
                        const CustomRowText(
                          text1: 'Nike Club Fleece',
                          text2: '\$120',
                          color1: ColorsApp.black,
                          color2: ColorsApp.black,
                          fontWeight1: FontWeight.bold,
                          fontSize1: 20,
                          fontSize2: 20,
                          fontWeight2: FontWeight.bold,
                        ),
                        CustomFleece(imageSize: imageSize),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomRowText(
                          text1: 'Size',
                          text2: 'Size Guide',
                          color1: ColorsApp.black,
                          fontWeight1: FontWeight.w500,
                          color2: ColorsApp.grey,
                          fontWeight2: FontWeight.w400,
                        ),
                        CustomSizes(sizes: sizes),
                        const CustomDescription(),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomRowText(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ReviewsPage(),
                              ),
                            );
                          },
                          text1: 'Reviews',
                          text2: 'View All',
                          color1: ColorsApp.black,
                          fontWeight1: FontWeight.w600,
                          color2: ColorsApp.grey,
                          fontWeight2: FontWeight.w300,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomReviews(
                          describtion: 'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Pellentesque malesuada eget\nvitae amet...',
                          name: 'Ronald Richards',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Total Price',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const CustomRowText(
                          text1: 'with VAT,SD',
                          text2: '\$125',
                          color1: ColorsApp.grey,
                          fontWeight1: FontWeight.w300,
                          color2: ColorsApp.black,
                          fontWeight2: FontWeight.w500,
                          fontSize2: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
