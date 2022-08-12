import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sedjoek_apps/theme.dart';

class KebijakanPrivasiPage extends StatelessWidget {
  const KebijakanPrivasiPage({Key? key}) : super(key: key);

  Widget empty(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultMargin),
      child: Lottie.asset(
        'assets/lottie/error.json',
        width: MediaQuery.of(context).size.width,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: empty(context),
    );
  }
}
