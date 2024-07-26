import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_reviews.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_row_title_page.dart';
import 'package:laza_app_test/Pages/Home/add_review_page.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({super.key});

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  double rating1 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomRowTitlePage(
            title: 'Reviews',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          '245 Reviews',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: ColorsApp.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              rating1.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            AnimatedRatingStars(
                              onChanged: (rating2) {
                                setState(() {
                                  rating1 = rating2;
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
                        )
                      ],
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: const Size(170, 55),
                        backgroundColor: ColorsApp.redaccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AddReviewPage(),
                          ),
                        );
                      },
                      label: const Text(
                        'Add Review',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: ColorsApp.white),
                      ),
                      icon: const Icon(
                        Icons.addchart_rounded,
                        color: ColorsApp.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const CustomReviews(
                        name: 'Mustafa moffa',
                        describtion: 'Programer In Flutter',
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
