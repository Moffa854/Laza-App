import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_list_view_brand.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_list_view_build.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_row_text.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_sliver_app_bar.dart';
import 'package:laza_app_test/Pages/Home/Customs/custom_text_form_feild_search.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  List<String> titles = [
    'Nike Sportswear Club\nFleece',
    'Trail Running Jacket Nike\nWindrunner',
    'Nike Sportswear Club\nFleece',
    'Trail Running Jacket Nike\nWindrunner'
  ];
  List<String> images1 = [
    'assets/images/Rectangle 565@2x.png',
    'assets/images/Rectangle 566@2x.png',
  ];
  List<String> images2 = [
    'assets/images/Rectangle 568@2x.png',
    'assets/images/Rectangle 569@2x.png',
  ];
  List<String> imagestypesBrand = [
    'assets/svg/Adidas@2x.svg',
    'assets/svg/Vector@2x.svg',
    'assets/svg/fila-9 1@2x.svg',
    'assets/svg/Adidas@2x.svg'
  ];
  List<String> nameBrand = ['Adidas', 'Nike', 'Fila', 'Adidas'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Hello',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Text(
                        'Welcome to Laza.',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Expanded(
                              child: CustomTextFeildSearch(
                                hintText: 'Search',
                                prefixicon: Opacity(
                                    opacity: 0.5, child: Icon(Icons.search)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(50, 50),
                                  backgroundColor: ColorsApp.purple,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.mic,
                                  color: ColorsApp.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      const CustomRowText(
                        color1: Colors.black,
                        color2: ColorsApp.grey,
                        fontWeight1: FontWeight.bold,
                        fontWeight2: FontWeight.w300,
                        fontSize1: 18,
                        text1: 'Choose Brand',
                        text2: 'View All',
                      ),
                      const SizedBox(height: 15),
                      CustomListViewBrand(
                        imagestypesBrand: imagestypesBrand,
                        nameBrand: nameBrand,
                      ),
                      const CustomRowText(
                        color1: Colors.black,
                        color2: ColorsApp.grey,
                        fontWeight1: FontWeight.bold,
                        fontWeight2: FontWeight.w300,
                        fontSize1: 18,
                        text1: 'New Arraival',
                        text2: 'View All',
                      ),
                      CustomListViewArraival(
                        images: images1,
                        title: titles,
                      ),
                      CustomListViewArraival(
                        images: images2,
                        title: titles,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
