import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

import '../../components/card_notification.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        title: Text('Notifikasi'),
        backgroundColor: backgroundColor7,
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: kDefaultMargin * 1.5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2.4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Terbaru',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Tandai Sudah Dibaca',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            CardNotification(
              sender: 'si Djoeki',
              title: 'Kami ingin dengar pendapatmu',
              message:
                  'Pendapatmu sangat berharga untuk meningkatkan pelayanan kami ! Ambil bagian dalam survei kami sekarang.',
            ),
            CardNotification(
              sender: 'si Djoeki',
              title: 'Batas Waktu Pembayaran',
              message:
                  'Hai Galih,  sewa AC kamu sebesar Rp. 1.400.000 belum dibayar. Lakukan pembayaran sebelum 07-08-2022 22:05.Silakan abaikan pesan ini jika kamu telah membayar.',
            ),
            CardNotification(
              sender: 'si Djoeki',
              title: 'Kami ingin dengar pendapatmu',
              message:
                  'Pendapatmu sangat berharga untuk meningkatkan pelayanan kami ! Ambil bagian dalam survei kami sekarang.',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
