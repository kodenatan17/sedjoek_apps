import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/menu_item.dart';

class MenuItems {
  static final payment = CustomMenuItem(
    'Pembayaran Saya',
    Image.asset(
      'assets/icons/ico_pembayaran.png',
      width: 30,
    ),
  );
  static final carts = CustomMenuItem(
    'Keranjang Saya',
    Image.asset(
      'assets/icons/ico_cart.png',
      width: 30,
    ),
  );
  static final notifications = CustomMenuItem(
    'Pemberitahuan Saya',
    Image.asset(
      'assets/icons/ico_nofitication.png',
      width: 30,
    ),
  );
  static final promos = CustomMenuItem(
    'Promo & Event',
    Image.asset(
      'assets/icons/ico_promo.png',
      width: 30,
    ),
  );
  static final rates = CustomMenuItem(
    'Rating Aplikasi',
    Image.asset(
      'assets/icons/ico_rate.png',
      width: 30,
    ),
  );
}

class MenuPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container();
  }
}
