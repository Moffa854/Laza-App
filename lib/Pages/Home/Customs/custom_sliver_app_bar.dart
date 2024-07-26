import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final void Function()? onPressed;
  const CustomSliverAppBar({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      floating: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(
            builder: (context) {
              return IconButton.filledTonal(
                onPressed: onPressed,
                icon: const Icon(Icons.menu_sharp),
              );
            },
          ),
          IconButton.filledTonal(
            onPressed: () {},
            icon: const Icon(Icons.card_travel),
          ),
        ],
      ),
    );
  }
}
