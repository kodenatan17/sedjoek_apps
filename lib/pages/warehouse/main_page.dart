import 'package:flutter/material.dart';
import 'package:sedjoek_apps/pages/warehouse/stock/stock_page.dart';

import '../../theme.dart';
import 'chat/chat_page.dart';
import 'home/home_page.dart';
import 'profile/profile_page.dart';
import 'notification/notification_page.dart';

class MainPageWarehouse extends StatefulWidget {
  const MainPageWarehouse({Key? key}) : super(key: key);

  @override
  State<MainPageWarehouse> createState() => _MainPageWarehouseState();
}

class _MainPageWarehouseState extends State<MainPageWarehouse> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        backgroundColor: primaryColor,
        child: Icon(
          Icons.qr_code_sharp,
          weight: 20,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/warehouse/qr-page');
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
                    color: currentIndex == 3 ? isActive : unActive,
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
          return HomePageWarehouse();
          break;
        case 1:
          return const ChatPageWarehouse();
          break;
        case 2:
          return const StockPageWarehouse();
          break;
        case 3:
          return ProfilePageWarehouse();
          break;
        default:
          return HomePageWarehouse();
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