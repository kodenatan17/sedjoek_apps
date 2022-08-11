import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/card_checkout.dart';
import 'package:sedjoek_apps/widgets/buttons.dart';

import '../../theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return ListView(
        padding: const EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          bottom: defaultMargin,
        ),
        children: [
          Container(
            margin: const EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daftar Sewa',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                CardCheckout(),
                CardCheckout(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: defaultMargin,
            ),
            padding: const EdgeInsets.all(kDefaultPadding * 2),
            decoration: BoxDecoration(
              color: bgCheckoutCard,
              borderRadius: BorderRadius.circular(kDefaultCircular),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alamat Detail',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: kDefaultCircular,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/ico_office.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/icons/ico_line.png',
                          height: 30,
                        ),
                        Image.asset(
                          'assets/icons/ico_address.png',
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: kDefaultCircular,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Office Location',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'PT. Alpha Cemerlang Solusindo',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          'Your Address',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Jl. Bima X No 204 RT 04/08 Kranji,Bekasi',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Pilih alamat lain',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: light,
                              color: primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: defaultMargin,
            ),
            padding: const EdgeInsets.all(kDefaultPadding * 2),
            decoration: BoxDecoration(
              color: bgCheckoutCard,
              borderRadius: BorderRadius.circular(kDefaultCircular),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ringkasan Pembayaran',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: kDefaultMargin,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lama Sawa',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Harga Produk',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Ongkos Kirim',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '6 Bulan',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Rp. 190.000/bulan',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultMargin,
                        ),
                        Text(
                          'Free',
                          style: primaryTextStyle.copyWith(
                            fontWeight: light,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultCircular,
                ),
                Divider(
                  thickness: 1,
                  color: primaryTextColor,
                ),
                SizedBox(
                  height: kDefaultCircular,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Rp. 1.140.000',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget bottomNavBar() {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: kDefaultPadding,
        ),
        child: CustomFilledButton(
          title: 'Pilihan Pembayaran',
          onPressed: () {},
          radius: kDefaultCircular,
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
        elevation: 0,
      ),
      body: content(),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
