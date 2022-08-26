import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/brand_model.dart';

class BrandService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<BrandModel>> getBrands() async {
    var url = '$baseUrl/brands';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<BrandModel> brands = [];

      for (var item in data) {
        brands.add(BrandModel.fromJson(item));
      }
      return brands;
    } else {
      throw Exception('Gagal Get Brands!');
    }
  }
}
