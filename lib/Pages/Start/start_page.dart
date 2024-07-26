import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Core/Constant/images_app.dart';
import 'package:laza_app_test/Pages/Auth/get_start_page.dart';
import 'package:laza_app_test/Widgets/Customs/custom_elevated_button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorsApp.lineraccentblue,
              ColorsApp.linerblue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.75,
              child: Image.asset(
                ImagesApp.man,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 15,
              right: 15,
              left: 15,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorsApp.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 30),
                  child: Column(
                    children: [
                      const Text(
                        'Look Good, Feel Good',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        'Create your individual & unique style and\nlook amazing everyday.',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomElevatedButton(
                              onpressed: () {
                                setState(() {
                                  isSelected = false;
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const GetStartPage(),
                                    ),
                                  );
                                });
                              },
                              name: 'Men',
                              textcolor: isSelected
                                  ? ColorsApp.accentblack
                                  : ColorsApp.white,
                              background: isSelected
                                  ? ColorsApp.white
                                  : ColorsApp.purple,
                            ),
                            CustomElevatedButton(
                              onpressed: () {
                                setState(() {
                                  isSelected = true;
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const GetStartPage(),
                                    ),
                                  );
                                });
                              },
                              name: 'Women',
                              textcolor: isSelected
                                  ? ColorsApp.white
                                  : ColorsApp.accentblack,
                              background: isSelected
                                  ? ColorsApp.purple
                                  : ColorsApp.white,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const GetStartPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: ColorsApp.accentblack,
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
