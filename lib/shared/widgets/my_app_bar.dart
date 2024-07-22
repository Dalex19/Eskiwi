import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff272729),
      centerTitle: true,
      title: Image.asset(
        "assets/images/d20.png",
        width: 40,
      ),
      scrolledUnderElevation: 4.0,
      shadowColor: Colors.white,
      actions: [
        Container(
          height: 30,
          width: 30,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            color: CupertinoColors.systemPink,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Pixel.arttext,
            size: 30,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
