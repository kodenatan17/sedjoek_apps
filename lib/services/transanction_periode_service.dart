import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/transaction_periode_model.dart';

class TransactionPeriodeService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<TransactionPeriodeModel>> getTransactionPeriodes() async {
    var url = '$baseUrl/transactionperiodes';
    var headers = {'Content-Type' : 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if(response.statusCode == 200 ){
      List data = jsonDecode(response.body)['data']['data'];
      List<TransactionPeriodeModel> transactionPeriodes = [];

      for (var item in data){
        transactionPeriodes.add(TransactionPeriodeModel.fromJson(item));
      }
      return transactionPeriodes;
    } else {
      throw Exception('Gagal get Transaction Periodes!');
    }
  }
}