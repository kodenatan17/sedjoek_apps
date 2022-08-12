import 'package:flutter/material.dart';

import '../theme.dart';

class CardArticle extends StatelessWidget {
  final String title;
  final String message;
  final String imgURL;
  final String subtitle;
  final String date;
  const CardArticle({
    Key? key,
    required this.title,
    required this.message,
    required this.imgURL,
    required this.subtitle,
    required this.date,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
        backgroundColor: backgroundColor7,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(defaultMargin),
            margin: const EdgeInsets.only(top: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  subtitle,
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                Text(
                  date,
                  style: secondaryTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                const SizedBox(
                  height: defaultMargin,
                ),
                Image.asset(
                  imgURL,
                  height: 141,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: defaultMargin * .5,
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: title,
                          style: primaryTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 12,
                          ),
                        ),
                        WidgetSpan(
                          child: Text(
                            message,
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: medium,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
