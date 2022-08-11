import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: width * .5,
          height: height * .5,
          child: Column(
            children: [
              Image.asset(
                "assets/images/splash_screen.png",
                fit: BoxFit.cover,
                width: width * .5,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/logo/splash_screen2.png",
                fit: BoxFit.cover,
                width: width * .5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
