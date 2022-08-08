import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';
import 'package:sedjoek_apps/widgets/card_tips.dart';

class HomePage extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/card.png',
    'assets/images/card.png',
    'assets/images/card.png',
    'assets/images/card.png',
    'assets/images/card.png',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        children: [
          buildProfile(),
          buildCardCarousel(),
          buildCategories(),
          buildTips(),
        ],
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(top: defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hallo,",
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Galih Wicaksana',
                style: titleTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/photo.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: primaryColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCardCarousel() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(
        top: defaultMargin,
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 6),
          enableInfiniteScroll: false,
        ),
        items: imgList.map<Widget>((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(i),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget buildCategories() {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultCircular),
                  color: primaryColor),
              child: Text(
                'Semua AC',
                style: whiteTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: transparentColor,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                'Paket AC 1 PK',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: transparentColor,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                'Paket AC 1/2 PK',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: transparentColor,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                'Paket AC 1.5 PK',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: transparentColor,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                'Paket AC 2 PK',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTips() {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultMargin * .5,
      ),
      child: Column(
        //tips card => info, tips, promo
        children: [
          CustomCardTips(
            cardType: 'tips',
            title: 'Tips memilih AC untuk rumah',
            subtitle: 'Jangan salah pilih AC untuk rumah kamu',
          ),
          CustomCardTips(
            cardType: 'info',
            title: 'Cara Merawat AC supaya awet',
            subtitle: 'Inilah cara merawat AC supaya tidak rusak',
          ),
          CustomCardTips(
            cardType: 'promo',
            title: 'Ketahui jenis-jenis AC di pasaran',
            subtitle: 'Ternyata AC ada banyak jenisnya loh',
          ),
        ],
      ),
    );
  }
}
