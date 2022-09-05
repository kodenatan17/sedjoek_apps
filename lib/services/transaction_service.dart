import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/transaction_model.dart';

class TransactionService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<TransactionModel>> getTransanctions() async {
    var url = '$baseUrl/transactions';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<TransactionModel> transactions = [];

      for (var item in data) {
        transactions.add(TransactionModel.fromJson(item));
      }
      return transactions;
    } else {
      throw Exception('Gagal Get Transactions!');
    }
  }
}
