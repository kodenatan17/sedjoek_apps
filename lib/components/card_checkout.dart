import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class CardCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgCheckoutCard,
        borderRadius: BorderRadius.circular(kDefaultCircular),
      ),
      margin: const EdgeInsets.only(top: kDefaultMargin),
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding * 1.5,
        horizontal: kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultCircular),
              image: DecorationImage(
                image: AssetImage('assets/icons/ico_product.png'),
              ),
            ),
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SHARP AH-AP5UHL',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Rp. 1.140.000',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          Text(
            '6 bulan',
            style: primaryTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }
}
