import 'package:sedjoek_apps/models/stock_model.dart';
import 'package:sedjoek_apps/models/transaction_model.dart';

class TransactionStockModel {
  int? id;
  late TransactionModel transaction;
  late StockModel stock;
  int? qty;

  TransactionStockModel({
    required this.id,
    required this.transaction,
    required this.stock,
    required this.qty,
  });

  TransactionStockModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    transaction = TransactionModel.fromJson(json['transation_id']);
    stock = StockModel.fromJson(json['stock_id']);
    qty = json['qty'];
  }
}
