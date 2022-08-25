import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:provider/provider.dart';
import 'package:sedjoek_apps/components/card_backup.dart';
import 'package:sedjoek_apps/components/card_popular_product.dart';
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
    'assets/images/banner_5.png',
  ];

  final List<String> navItem = [
    'Paket AC',
    'Hitung PK',
    'Artikel',
    'Promo',
  ];

  int currentNavItem = 0;

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
          buildProductTitle(),
          // buildProduct(productProvider),
          buildProduct(),
          buildCategories(),
        ],
      ),
    );
  }

  Widget buildProductTitle() {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Popular Products',
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  // Widget buildProduct(ProductProvider productProvider) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(kDefaultCircular),
  //     ),
  //     margin: const EdgeInsets.only(top: kDefaultMargin),
  //     child: SingleChildScrollView(
  //       scrollDirection: Axis.horizontal,
  //       child: Row(
  //         children: [
  //           SizedBox(
  //             height: kDefaultPadding * 2,
  //           ),
  //           Row(
  //             children: productProvider.products
  //                 .map(
  //                   (product) => CardPopularProduct(product),
  //                 )
  //                 .toList(),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget buildProduct() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultCircular),
      ),
      margin: const EdgeInsets.only(top: kDefaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            Row(
              children: [
                CardBackup(),
                CardBackup(),
                CardBackup(),
                CardBackup(),
                CardBackup(),
              ],
            ),
          ],
        ),
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
              photoURL: user.profilePhotoPath,
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
      height: 150,
      margin: const EdgeInsets.only(
        top: kDefaultMargin * 1.5,
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 0.9,
          aspectRatio: 3 / 4,
          enableInfiniteScroll: false,
        ),
        items: imgList.map<Widget>((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: kDefaultMargin),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade700,
                      spreadRadius: 0.2,
                      blurRadius: 5,
                    )
                  ],
                  borderRadius: BorderRadius.circular(kDefaultCircular),
                  image: DecorationImage(
                    image: AssetImage(i),
                    fit: BoxFit.fill,
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
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: defaultMargin,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: double.infinity,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: navItem.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentNavItem = index;
                        });
                      },
                      child: AnimatedContainer(
                        margin: const EdgeInsets.all(kDefaultMargin),
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                          color: currentNavItem == index
                              ? primaryColor
                              : backgroundColor7,
                          borderRadius: currentNavItem == index
                              ? BorderRadius.circular(kDefaultCircular * 1.5)
                              : BorderRadius.circular(kDefaultCircular),
                          border: currentNavItem == index
                              ? Border.all(color: primaryColor, width: 2)
                              : null,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              spreadRadius: 0.2,
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        duration: const Duration(milliseconds: 500),
                        child: Center(
                          child: Text(
                            navItem[index],
                            style: currentNavItem == index
                                ? whiteTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  )
                                : primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          buildTips()
        ],
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
