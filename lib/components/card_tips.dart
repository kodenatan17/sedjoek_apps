import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class CustomCardTips extends StatelessWidget {
  final String? img;
  final String? cardType;
  final String? title;
  final String? subtitle;
  const CustomCardTips({
    Key? key,
    this.img,
    this.cardType,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultCircular),
            color: cardType == 'tips'
                ? cardType == 'info'
                    ? cardInfo
                    : cardPromo
                : cardTips,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                subtitle!,
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 100,
            height: 150,
            margin: const EdgeInsets.only(
              right: kDefaultMargin
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/icons/maskot_1.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
