import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/transaction_periode_model.dart';
import 'package:sedjoek_apps/services/transanction_periode_service.dart';

class TransactionPeriodeProvider with ChangeNotifier {
  List<TransactionPeriodeModel> _transactionPeriode = [];

  List<TransactionPeriodeModel> get transactionPeriodes => _transactionPeriode;

  set transactionPeriodes(List<TransactionPeriodeModel> transactionPeriodes) {
    _transactionPeriode = transactionPeriodes;
    notifyListeners();
  }

  Future<void> getTransactionPeriodes() async {
    try {
      List<TransactionPeriodeModel> transactionPeriodes = await TransactionPeriodeService().getTransactionPeriodes();
      _transactionPeriode = transactionPeriodes;
    } catch (e) {
      print(e);
    }
  }
}