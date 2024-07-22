import 'package:flutter/material.dart';

class RotationContainer extends StatefulWidget {
  const RotationContainer({super.key});

  @override
  State<RotationContainer> createState() => _RotationContainerState();
}

class _RotationContainerState extends State<RotationContainer>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: animation,
      child: Image.asset(
        "assets/images/d20.png",
        fit: BoxFit.fitHeight,
        height: 220,
        width: 220,
      ),
    );
  }
}
