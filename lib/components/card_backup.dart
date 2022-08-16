import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sedjoek_apps/models/product_model.dart';
import 'package:sedjoek_apps/theme.dart';

class CardBackup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/product-detail'),
      child: Container(
        width: 200,
        height: 250,
        margin: const EdgeInsets.only(
          right: defaultMargin * .5,
          bottom: defaultMargin * .5,
          top: defaultMargin * .5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultCircular),
          color: backgroundColor7,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              spreadRadius: 0.5,
              blurRadius: 6,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Lottie.asset(
              'assets/lottie/ac.json',
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Paket 0.5 PK',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'SHARP AH-AP5UHL',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'RP. 190.000',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
