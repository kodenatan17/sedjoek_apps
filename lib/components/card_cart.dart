import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class CardCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultMargin),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 1.6,
        vertical: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: backgroundColor5,
        borderRadius: BorderRadius.circular(kDefaultCircular),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/ico_product.png',
                    ),
                  ),
                  borderRadius: BorderRadius.circular(kDefaultCircular),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SHARP AH-AP5UHL',
                      style: primaryTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 14),
                    ),
                    Text(
                      'AC Split Low Watt Plasmacluster',
                      style: primaryTextStyle.copyWith(
                          fontWeight: light, fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sewa',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/ico_add.png',
                              width: 16,
                            ),
                            SizedBox(
                              width: kDefaultPadding,
                            ),
                            Text(
                              '6 bulan',
                              style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              width: kDefaultPadding,
                            ),
                            Image.asset(
                              'assets/icons/ico_remove.png',
                              width: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Harga Sewa',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'RP. 1.140.000',
                          style: priceTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/ico_delete.png',
                          width: 12,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Hapus',
                          style: alertTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
