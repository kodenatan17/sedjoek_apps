import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/banner_model.dart';
import 'package:sedjoek_apps/services/banner_service.dart';

class BannerProvider with ChangeNotifier {
  List<BannerModel> _banners = [];

  List<BannerModel> get banners => _banners;

  set banners(List<BannerModel> banners) {
    _banners = banners;
    notifyListeners();
  }

  Future<void> getBanners() async {
    try {
      List<BannerModel> banners = await BannerService().getBanners();
      _banners = banners;
    } catch (e) {
      print(e);
    }
  }
}
