import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class CardPromo extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String message;
  final String expired;
  const CardPromo({
    Key? key,
    required this.onTap,
    required this.title,
    required this.message,
    required this.expired,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/img_promo.png',
              height: 100,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Spacer(),
                Text(
                  message,
                  style: primaryTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      expired,
                      style: secondaryTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Image.asset(
                      'assets/icons/ico_share.png',
                      width: 20,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
