import 'package:flutter/material.dart';
import 'package:projet_box/constants/helpers.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:projet_box/views/box_auth_side.dart';
import 'package:page_transition/page_transition.dart';

class BoxSplashScreen extends StatefulWidget {
  const BoxSplashScreen({super.key});

  @override
  State<BoxSplashScreen> createState() => _BoxSplashScreenState();
}

class _BoxSplashScreenState extends State<BoxSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          // Assets.images.boxLogoName.image(),
          Text(
            "BOX",
            style: makeTextStyleWith(
              textfontSize: 80,
              textfontWeight: FontWeight.w700,
              // textColor: boxWhiteness,
            ),
          ),
        ],
      ),
      nextScreen: const BoxAuthSide(),
      splashIconSize: 150,
      duration: 3000,
      backgroundColor: boxGoldenPrimary,
      pageTransitionType: PageTransitionType.fade,
      curve: Curves.easeInOut,
    );
  }
}
