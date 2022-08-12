import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor7,
        centerTitle: true,
        title: Text(
          'Tentang Djoeki',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultCircular),
            bottomRight: Radius.circular(kDefaultCircular),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/maskot_polos.png',
                  width: 150,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/icons/maskot_title.png',
                  width: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Text(
              'Versi 1.0.0',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                'Sedjoek adalah platform penyedia jasa penyewaan AC residensial berbasis aplikasi pertama di Indonesia yang dikemas secara menarik dan dilengkapi dengan berbagai metode pembayaran, pastinya BEBAS biaya pengiriman dan pemasangan.',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
