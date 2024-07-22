// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:eskiwi_app/features/messages/widgets/my_segmented_buttons.dart';

class AppBarMessa extends StatelessWidget {
  const AppBarMessa({
    Key? key,
    required this.myPageController,
  }) : super(key: key);
  final PageController myPageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      color: const Color(0xff1E1E20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Your chats",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: "MultiPixel",
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Setttings",
                  style: TextStyle(
                      fontFamily: "Multipixel",
                      letterSpacing: 1.5,
                      fontSize: 16,
                      color: Color(0xff6C6C6E)),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                color: const Color(0xff272729),
                borderRadius: BorderRadius.circular(15),
              ),
              child: MySegmentedButtons(
                pageController: myPageController,
              ),
            ),
          )
        ],
      ),
    );
  }
}
