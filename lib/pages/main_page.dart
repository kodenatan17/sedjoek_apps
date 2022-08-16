import 'package:flutter/material.dart';

import '../theme.dart';
import 'chat/chat_page.dart';
import 'home/home_page.dart';
import 'profile/profile_page.dart';
import 'wishlist/wishlist_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        backgroundColor: primaryColor,
        child: Icon(
          Icons.shopping_bag,
          weight: 20,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/product');
        },
      );
    }

    Widget customBottomNavigation() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 15,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: backgroundColor2,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(
                      top: kDefaultMargin,
                      bottom: kDefaultMargin,
                    ),
                    child: Image.asset(
                      "assets/icons/icon_home.png",
                      width: 20,
                      color: currentIndex == 0 ? isActive : unActive,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: kDefaultMargin,
                    bottom: kDefaultMargin,
                    right: defaultMargin
                  ),
                  child: Image.asset(
                    "assets/icons/icon_chat.png",
                    width: 20,
                    color: currentIndex == 1 ? isActive : unActive,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: kDefaultMargin,
                    bottom: kDefaultMargin,
                    left: defaultMargin
                  ),
                  child: Image.asset(
                    "assets/icons/icon_fav.png",
                    width: 20,
                    color: currentIndex == 2 ? isActive : unActive,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: kDefaultMargin,
                    bottom: kDefaultMargin
                  ),
                  child: Image.asset(
                    "assets/icons/icon_profile.png",
                    width: 20,
                    color: currentIndex == 0 ? isActive : unActive,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget? body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return const ChatPage();
          break;
        case 2:
          return const WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNavigation(),
      body: body(),
    );
  }
}