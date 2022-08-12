import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/help_menu.dart';
import 'package:sedjoek_apps/theme.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Widget header(){
    //   return AppBar(

    //   )
    // }

    Widget content() {
      return Expanded(
        child: Container(
          padding: const EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Paling Sering Ditanya',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              HelpMenu(text: 'Di platform mana saja dapat melakukan sewa AC?'),
              HelpMenu(text: 'Berapa Lama Pengiriman?'),
              HelpMenu(
                  text:
                      'Dimana saya bisa mendapatkan informasi promo terkini?'),
              HelpMenu(
                  text:
                      'Bagaimana cara membatalkan pesanan yang sudah saya buat?'),
              HelpMenu(
                  text: 'Bagaimana jika saya ingin menunda pengiriman produk?'),
              SizedBox(
                height: kDefaultPadding,
              ),
              Center(
                child: Text(
                  'Lihat pertanyaan lainnya',
                  style: linkTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
              ),
              Divider(
                thickness: kDefaultPadding,
                color: secondaryTextColor,
              ),
              const SizedBox(
                height: kDefaultMargin,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: backgroundColor7,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/ico_call.png',
                          width: 30,
                        ),
                        Text(
                          'Telepon',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          '+62 8112 2411 86',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: backgroundColor7,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/ico_email.png',
                          width: 30,
                        ),
                        Text(
                          'Email',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'sedjoek.id@gmail.com',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: kDefaultMargin),
                    padding: const EdgeInsets.all(kDefaultPadding),
                    width: 100,
                    decoration: BoxDecoration(
                      color: backgroundColor7,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/ico_location.png',
                          width: 30,
                        ),
                        Text(
                          'Alamat',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Jl. Taman Vlll No. 208',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor7,
        centerTitle: true,
        title: Text(
          'Pusat Bantuan',
          style: primaryTextStyle.copyWith(fontWeight: semiBold),
        ),
      ),
      body: Column(
        children: [
          content(),
        ],
      ),
    );
  }
}
