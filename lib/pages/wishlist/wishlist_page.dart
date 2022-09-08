import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/wishlist_card.dart';

import '../../theme.dart';
import '../../widgets/buttons.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget emptyFavorite() {
      return Expanded(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                size: 80,
                color: primaryColor,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Opss Kamu tidak memiliki barang di Wishlist?",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Klik ikon 💙 untuk simpan di wishlist",
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/bg-effect.png',
              ),
              fit: BoxFit.cover
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              WishlistCard(),
              WishlistCard(),
              WishlistCard(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg-header.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: bgNavbar,
          centerTitle: true,
          title: Text(
            'Favorite',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            content(),
          ],
        ),
      ),
    );
  }
}
