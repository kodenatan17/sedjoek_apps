import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/card_cart.dart';
import 'package:sedjoek_apps/theme.dart';

import '../../widgets/buttons.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget emptyCart() {
      return Expanded(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/ico_cart.png',
                width: 80,
                color: primaryColor,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Opss Kamu tidak memiliki barang di Cart?",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Klik ikon 🛒 untuk simpan di Cart",
                style: secondaryTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFilledButton(
                radius: kDefaultCircular,
                width: 150,
                title: 'Explore Store',
                onPressed: () {},
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor1,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              CardCart(),
              CardCart(),
              CardCart(),
            ],
          ),
        ),
      );
    }

    Widget customButtonNav() {
      return Container(
        height: 100,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Rp. 1.140.000',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: CustomFilledButton(
                width: double.infinity,
                title: 'Lanjutkan Pembayaran',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/checkout-page', (route) => false);
                },
                radius: kDefaultCircular,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            content(),
          ],
        ),
      ),
      bottomNavigationBar: customButtonNav(),
    );
  }
}
