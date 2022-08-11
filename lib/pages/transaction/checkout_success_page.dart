import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';
import 'package:sedjoek_apps/widgets/buttons.dart';

class CheckoutSuccessPage extends StatelessWidget {
  const CheckoutSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/ico_cart.png',
              color: primaryColor,
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Kamu telah membuat Transaksi',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              'Tetap dirumah Djoeki\n akan menyiapkan AC impianmu',
              style: secondaryTextStyle.copyWith(
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            ),
            CustomFilledButton(
              title: 'Pesan AC Lainnya',
              radius: kDefaultCircular,
              width: 200,
              onPressed: () {},
            ),
            CustomFilledButton(
              title: 'Lihat Pesananku',
              radius: kDefaultCircular,
              width: 200,
              onPressed: () {},
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor3,
        centerTitle: true,
        title: Text('Checkout Success'),
        elevation: 0,
      ),
      body: content(),
    );
  }
}
