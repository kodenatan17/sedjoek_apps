import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/card_promo.dart';

import '../../theme.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultMargin),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 2.4,
                ),
                child: Row(
                  children: [
                    Text(
                      'Terbaru',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
              CardPromo(
                onTap: () {},
                title: 'Promo untuk Pendaftar Pertama',
                message: 'Promo untuk pendaftar Pertama',
                expired: '17-05-2023',
              ),
              CardPromo(
                onTap: () {},
                title: 'Promo untuk Pendaftar Pertama',
                message: 'Promo untuk pendaftar Pertama',
                expired: '17-05-2023',
              ),
              CardPromo(
                onTap: () {},
                title: 'Promo untuk Pendaftar Pertama',
                message: 'Promo untuk pendaftar Pertama',
                expired: '17-05-2023',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Pemberitahuan'),
        backgroundColor: backgroundColor7,
      ),
      body: content(),
    );
  }
}
