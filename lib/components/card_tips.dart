import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class CustomCardTips extends StatelessWidget {
  final String? img;
  const CustomCardTips({
    Key? key,
    this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.only(bottom: defaultMargin * .5),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultCircular),
        image: DecorationImage(
          image: AssetImage(
            img!,
          ),
        ),
      ),
    );
  }
}
