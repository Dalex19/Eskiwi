import 'package:eskiwi_app/features/home/home.dart';
import 'package:eskiwi_app/features/splashscreen/widgets/rotating_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Home()),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: screenSize.width,
          height: 250,
          child: Stack(
            children: [
              Positioned(
                left: (screenSize.width - 220) / 2,
                child: const RotationContainer(),
              ),
              const Positioned(
                top: 65,
                left: 0,
                right: 0,
                child: Text(
                  textAlign: TextAlign.center,
                  "Eskiwi",
                  style: TextStyle(
                      fontSize: 58,
                      fontWeight: FontWeight.bold,
                      fontFamily: "MultiPixel"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
