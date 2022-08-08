import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultMargin),
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
        left: kDefaultPadding,
        bottom: kDefaultPadding,
        right: kDefaultPadding * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultCircular),
        color: backgroundColor5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(kDefaultCircular),
            child: Image.asset(
              'assets/icons/ico_product.png',
              width: 50,
            ),
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sharp AH-AP5UHL Split Low Watt',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Rp. 1.145.000',
                  style: priceTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
            child: TextButton(
              onPressed: () {},
              child: Icon(
                Icons.favorite,
              ),
            ),
          )
        ],
      ),
    );
  }
}
