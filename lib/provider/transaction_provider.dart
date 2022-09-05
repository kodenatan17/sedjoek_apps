import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/transaction_model.dart';
import 'package:sedjoek_apps/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  List<TransactionModel> _transactions = [];

  List<TransactionModel> get transactions => _transactions;

  set transactions(List<TransactionModel> transactions) {
    _transactions = transactions;
    notifyListeners();
  }

  Future<void> getTransanctions() async {
    try {
      List<TransactionModel> transactions = await TransactionService().getTransanctions();
      _transactions = transactions;
    } catch (e){
      print(e);
    }
  }
}