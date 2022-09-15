import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          padding: const EdgeInsets.all(kDefaultPadding * 2),
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                primaryColor,
                purple1,
              ],
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(defaultMargin),
              bottomRight: Radius.circular(defaultMargin),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 25,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/ico_back_article.png'),
                      label: const Text(''),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Kerusakan AC',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 25,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/ico_share.png'),
                      label: const Text(''),
                    ),
                  ),
                ],
              ),
              Text(
                'Penyebab Kerusakan AC kamu ?',
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: buildContent(),
    );
  }

  Widget buildContent() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(defaultMargin),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg-effect.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(),
            buildImg(),
            buildContext(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Text(
            'Ini Kerusakan AC yang Harus Kamu Tahu!',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Text(
            '26 Agustus 2022 . Terbaca ',
            style: secondaryTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImg() {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultMargin),
      width: double.infinity,
      child: Image.asset(
        'assets/images/image-article.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildContext() {
    return Container(
      margin: const EdgeInsets.only(top: defaultMargin - 5),
      child: Expanded(
        child: Text(
          'Kamu Harus Tahu Kerusakan AC Ini   –  Indonesia adalah negara beriklim tropis dengan suhu yang cenderung panas. Hal ini menyebabkan AC menjadi kebutuhan masyarakat untuk mendinginkan udara di ruangan mereka. Namun seperti alat elektronik pada umumnya, AC juga bisa mengalami kerusakan yang menggangu kenyamanan kita loh. Nah, kali ini kita bahas kerusakan yang biasa terjadi di AC',
          style: primaryTextStyle.copyWith(fontSize: 12),
        ),
      ),
    );
  }
}
