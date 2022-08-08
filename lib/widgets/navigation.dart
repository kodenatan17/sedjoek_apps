import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: kDefaultMargin,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: backgroundColor2,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: kDefaultMargin * 2,
                    bottom: kDefaultMargin,
                  ),
                  child: Image.asset(
                    "assets/icons/icon_home.png",
                    width: 20,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: kDefaultMargin * 2,
                  bottom: kDefaultMargin,
                ),
                child: Image.asset(
                  "assets/icons/icon_chat.png",
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: kDefaultMargin * 2,
                  bottom: kDefaultMargin,
                ),
                child: Image.asset(
                  "assets/icons/icon_fav.png",
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(
                  top: kDefaultMargin * 2,
                  bottom: kDefaultMargin,
                ),
                child: Image.asset(
                  "assets/icons/icon_profile.png",
                  width: 20,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
