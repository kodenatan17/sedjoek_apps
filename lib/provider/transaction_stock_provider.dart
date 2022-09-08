import 'package:flutter/material.dart';
import 'package:sedjoek_apps/services/transaction_stock_service.dart';
import '../models/transaction_stock_model.dart';

class TransactionStockProvider with ChangeNotifier {
  List<TransactionStockModel> _transactionStocks = [];

  List<TransactionStockModel> get transactionStocks => _transactionStocks;

  set transactionStocks(List<TransactionStockModel> transactionStocks) {
    _transactionStocks = transactionStocks;
    notifyListeners();
  }

  Future<void> getTransanctions() async {
    try {
      List<TransactionStockModel> transactionStocks = await TransactionStockService().getTransactionStocks();
      _transactionStocks = transactionStocks;
    } catch (e) {
      print(e);
    }
  }
}