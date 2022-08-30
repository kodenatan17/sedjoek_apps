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
      height: 110,
      margin: const EdgeInsets.only(bottom: defaultMargin * .5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 1)
          )
        ],
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
