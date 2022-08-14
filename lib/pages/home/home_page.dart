import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';
import 'package:sedjoek_apps/components/photo_profile.dart';
import 'package:sedjoek_apps/provider/auth_provider.dart';
import 'package:sedjoek_apps/provider/product_provider.dart';
import 'package:sedjoek_apps/theme.dart';
import 'package:sedjoek_apps/components/card_tips.dart';

import '../../models/user_model.dart';
import '../../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/images/banner_1.png',
    'assets/images/banner_2.png',
    'assets/images/banner_3.png',
    'assets/images/banner_4.png',
  ];

  Widget zoomDrawer() => SafeArea(
        child: DrawerWidget(),
      );

  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultMargin * 1.5,
          vertical: defaultMargin,
        ),
        children: [
          buildProfile(user),
          buildCardCarousel(),
          buildCategories(),
          buildTips(),
        ],
      ),
    );
  }

  Widget buildProfile(UserModel user) {
    return Container(
      margin: const EdgeInsets.only(top: defaultMargin),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => ZoomDrawer.of(context)?.toggle(),
            child: PhotoProfile(
              photoURL: user.profilePhotoPath == null
                  ? 'assets/images/photo.png'
                  : user.profilePhotoPath!,
              isVerified: true,
            ),
          ),
          SizedBox(
            width: defaultMargin,
          ),
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
                '${user.name}',
                style: titleTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
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
                'Paket AC',
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
                'Artikel',
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
                'Promo',
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
                'Hitung PKmu',
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
            img: 'assets/images/card_artikel1.png',
          ),
          CustomCardTips(
            img: 'assets/images/card_artikel2.png',
          ),
          CustomCardTips(
            img: 'assets/images/card_artikel3.png',
          ),
        ],
      ),
    );
  }
}
