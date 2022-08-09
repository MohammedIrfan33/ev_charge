import 'package:ev_charge/screens/user/screens/login/login_screen.dart';
import 'package:ev_charge/utilities/constans.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/splash_logo.svg',
              width: kSplashImageSize,
              height: kSplashImageSize,
            ),
            kSpaceVertical20,
            const Text(
              'Ev Charger',
              style: kSplashLogoTextStyle,
            )
          ],
        ),
        splashIconSize: kSplashLogoSize,
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: const LoginScreen(),
      ),
    );
  }
}
