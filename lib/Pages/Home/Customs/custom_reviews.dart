import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Widgets/Customs/custom_rich_text.dart';

class CustomReviews extends StatefulWidget {
  final String name;
  final String describtion;
  const CustomReviews({super.key, required this.name, required this.describtion});

  @override
  State<CustomReviews> createState() => _CustomReviewsState();
}

class _CustomReviewsState extends State<CustomReviews> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(
                'assets/images/Rectangle 568.png',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -10),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 18,
                              color: ColorsApp.grey,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '13 Sep, 2020',
                              style: TextStyle(
                                fontSize: 10,
                                color: ColorsApp.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          CustomRichText(
                            text1: rating.toString(),
                            text2: 'rating',
                            fontWeight1: FontWeight.w500,
                            fontWeight2: FontWeight.w300,
                            onTap1: () {},
                            onTap2: () {},
                            color1: ColorsApp.black,
                            color2: ColorsApp.grey,
                          ),
                          AnimatedRatingStars(
                            onChanged: (rating1) {
                              setState(() {
                                rating = rating1;
                              });
                            },
                            customFilledIcon: Icons.star,
                            customHalfFilledIcon: Icons.star_half,
                            customEmptyIcon: Icons.star_border,
                            starSize: 15,
                            displayRatingValue: true,
                            interactiveTooltips: true,
                            animationDuration:
                                const Duration(milliseconds: 500),
                            animationCurve: Curves.easeInOut,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Transform.translate(
            offset: const Offset(0, -10),
            child:  Text(
              widget.describtion,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: ColorsApp.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
