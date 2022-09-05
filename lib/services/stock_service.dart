import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/stock_model.dart';

class StockService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<StockModel>> getStocks() async {
    var url = '$baseUrl/stocks';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if(response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<StockModel> stocks = [];

      for (var item in data) {
        stocks.add(StockModel.fromJson(item));
      }
      return stocks;
    } else { 
      throw Exception('Gagal Get Stocks!');
    }
  }
}
