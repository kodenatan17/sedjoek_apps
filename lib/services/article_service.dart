import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/article_model.dart';

class ArticleService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<ArticleModel>> getArticles() async {
    var url = '$baseUrl/articles';
    var headers = {'Content-Type': 'application/json'};
    
    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if(response.statusCode == 200){
      List data = jsonDecode(response.body)['data']['data'];
      List<ArticleModel> articles = [];

      for (var item in data) {
        articles.add(ArticleModel.fromJson(item));
      }
      return articles;
    } else {
      throw Exception('Gagal Get Articles!');
    }
  }
}
