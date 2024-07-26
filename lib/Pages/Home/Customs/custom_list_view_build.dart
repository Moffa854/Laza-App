import 'package:flutter/material.dart';
import 'package:laza_app_test/Core/Constant/colors_app.dart';
import 'package:laza_app_test/Pages/Home/show_details.dart';

class CustomListViewArraival extends StatefulWidget {
  final List<String> images;
  final List<String> title;
  const CustomListViewArraival(
      {super.key, required this.images, required this.title});

  @override
  State<CustomListViewArraival> createState() => _CustomListViewArraivalState();
}

class _CustomListViewArraivalState extends State<CustomListViewArraival> {
  List<bool> selected = [];
  @override
  void initState() {
    super.initState();
    selected = List<bool>.filled(widget.images.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.6,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.images.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  String imagePath = widget.images[index];
                  if (imagePath.isNotEmpty) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            ShowDetails(imagesDetails: imagePath),
                      ),
                    );
                  }
                },
                child: Transform.translate(
                  offset: const Offset(-75, 0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: MediaQuery.of(context).size.width / 2,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(
                          widget.images[index],
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            setState(() {
                              selected[index] = !selected[index];
                            });
                          },
                          icon: Icon(
                              selected[index]
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              size: 28,
                              color: selected[index]
                                  ? Colors.red
                                  : ColorsApp.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(-140, 0),
                child: Column(
                  children: [
                    Text(
                      widget.title[index],
                      style: const TextStyle(
                        color: ColorsApp.blacktext,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-70, 0),
                      child: const Text(
                        '\$99',
                        style: TextStyle(
                          color: ColorsApp.blacktext,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

/*
anydesk
*/