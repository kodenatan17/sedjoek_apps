import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/brand_model.dart';
import 'package:sedjoek_apps/services/brand_service.dart';

class BrandProvider with ChangeNotifier {
  List<BrandModel> _brands = [];

  List<BrandModel> get brands => _brands;

  set brands(List<BrandModel> banners) {
    _brands = brands;
    notifyListeners();
  }

  Future<void> getBrands() async {
    try {
      List<BrandModel> brands = await BrandService().getBrands();
      _brands = brands;
    } catch (e) {
      print(e);
    }
  }
}
