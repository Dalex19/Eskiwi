import 'package:flutter/material.dart';

class NoMessages extends StatelessWidget {
  const NoMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/telescopio.png"),
        SizedBox(height: 10),
        const Text(
          "No messages",
          style: TextStyle(fontSize: 30),
        )
      ],
    );
  }
}
