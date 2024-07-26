import 'package:flutter/material.dart';

class CustomFleece extends StatelessWidget {
  const CustomFleece({
    super.key,
    required this.imageSize,
  });

  final List<String> imageSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Transform.translate(
            offset: const Offset(-56, 0),
            child: Container(
              width: MediaQuery.of(context).size.width / 5,
              height: 200,
              margin: EdgeInsets.symmetric(
                  horizontal:
                      MediaQuery.of(context).size.width /
                          26.30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    imageSize[index],
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