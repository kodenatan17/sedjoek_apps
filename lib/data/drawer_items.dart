import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sedjoek_apps/models/model_drawer.dart';

class DrawerItems {
  static const payment =
      ModelDrawer(title: 'Pembayaran', icon: Icons.payment_outlined);
  static const promo =
      ModelDrawer(title: 'Promo', icon: Icons.discount_outlined);
  static const notif = ModelDrawer(
      title: 'Pemberitahuan', icon: Icons.notifications_none_outlined);
  static const cart =
      ModelDrawer(title: 'Pembelanjaan', icon: Icons.shopping_bag_outlined);
  static const rate =
      ModelDrawer(title: 'Rate Aplikasi', icon: Icons.star_outline);
  static const logout =
      ModelDrawer(title: 'Logout', icon: Icons.logout_outlined);

  static final List<ModelDrawer> all = [
    payment,
    promo,
    notif,
    cart,
    rate,
    logout,
  ];
}
