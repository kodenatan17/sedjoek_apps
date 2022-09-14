import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:sedjoek_apps/pages/technition/home/home_page.dart';
import 'package:sedjoek_apps/pages/technition/home/presence_page.dart';
import 'package:sedjoek_apps/pages/technition/home/task_page.dart';
import 'package:sedjoek_apps/pages/technition/home/wallet_page.dart';
import 'package:sedjoek_apps/pages/technition/main_page.dart';
import 'package:sedjoek_apps/theme.dart';

class DrawerPageTechnition extends StatefulWidget {
  const DrawerPageTechnition({Key? key}) : super(key: key);

  @override
  State<DrawerPageTechnition> createState() => _DrawerPageTechnitionState();
}

class _DrawerPageTechnitionState extends State<DrawerPageTechnition> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: DrawerScreen(
        setIndex: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      mainScreen: currentScreen(),
      borderRadius: defaultMargin,
      showShadow: true,
      angle: 0.0,
      menuBackgroundColor: primaryColor,
      slideWidth: 250,
    );
  }

  Widget currentScreen() {
    switch(currentIndex) {
      case 0 :
      return const MainPageTechnition();
      break;
      case 1 :
      return const TaskTechnitionPage();
      break;
      case 2 : 
      return const WalletTechnitionPage();
      break;
      case 3 :
      return const PresenceTechnitionPage();
      break; 
      default :
      return const MainPageTechnition();
    }
  }
}

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({
    Key? key,
    required this.setIndex,
  }) : super(key: key);

  final ValueSetter setIndex;

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerList(Icons.home, 'Home', 0),
          drawerList(Icons.face, 'My Tasks', 1),
          drawerList(Icons.wallet, 'My Wallets', 2),
          drawerList(Icons.present_to_all, 'My Presences', 3),
        ],
      ),
    );
  }

  Widget drawerList(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        widget.setIndex(index);
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultMargin * 2,
          bottom: kDefaultMargin * 1.2,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16,
              color: Colors.white,
            ),
            const SizedBox(
              width: kDefaultPadding * 2,
            ),
            Text(
              text,
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
