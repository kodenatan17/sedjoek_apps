import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/product_model.dart';

class ProductService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<ProductModel>> getProducts() async {
    var url = '$baseUrl/products';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }
      return products;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
