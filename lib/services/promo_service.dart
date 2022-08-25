import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/promo_model.dart';

class PromoService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  // Future<List<PromoModel>> getModel() async {
  //   var url = '$baseUrl/promos';
  //   var headers = {'Content-Type': 'application/json'};

  //   var response = await http.get(
  //     Uri.parse(url),
  //     headers: headers,
  //   );

  //   print(response.body);

  //   if(response.statusCode == 200){
  //     List data = jsonDecode(response.body)['data']['data'];
  //     List<PromoModel> promos = [];

  //     for (var item in data){
  //       promos.add(PromoModel.fromJson(item));
  //     }
  //   }
  // }
}
