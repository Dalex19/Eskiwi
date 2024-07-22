import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

class AppBarNoti extends StatelessWidget {
  const AppBarNoti({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      color: const Color(0xff1E1E20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Your Notifications",
            style: TextStyle(
              fontSize: 22,
              fontFamily: "MultiPixel",
              color: Color(0xff6C6C6E),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Pixel.notification,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
