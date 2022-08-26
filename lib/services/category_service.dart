import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/category_model.dart';

class CategoryService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<CategoryModel>> getCategories() async {
    var url = '$baseUrl/categories';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<CategoryModel> categories = [];

      for (var item in data) {
        categories.add(CategoryModel.fromJson(item));
      }
      return categories;
    } else {
      throw Exception('Gagal Get Categories!');
    }
  }
}
