import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/stock_model.dart';
import 'package:sedjoek_apps/services/stock_service.dart';

class StockProvider with ChangeNotifier {
  List<StockModel> _stocks = [];

  List<StockModel> get stocks => _stocks;

  set stocks(List<StockModel> stocks) {
    _stocks = stocks;
    notifyListeners();
  }

  Future<void> getStocks() async {
    try {
      List<StockModel> stocks = await StockService().getStocks();
      _stocks = stocks;
    } catch (e) {
      print(e);
    }
  }
}
