import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/transaction_stock_model.dart';

class TransactionStockService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<TransactionStockModel>> getTransactionStocks() async {
    var url ='$baseUrl/transactionstocks';
    var headers = {'Content-Type' : 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if(response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<TransactionStockModel> transactionStocks = [];

      for(var item in data) {
        transactionStocks.add(TransactionStockModel.fromJson(item));
      }
      return transactionStocks;
    } else {
      throw Exception('Gagal Get Transaction Stocks!');
    }
  }
}