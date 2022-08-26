import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/article_model.dart';
import 'package:sedjoek_apps/services/article_service.dart';

class ArticleProvider with ChangeNotifier {
  List<ArticleModel> _articles = [];

  List<ArticleModel> get articles => _articles;

  set articles(List<ArticleModel> articles) {
    _articles = articles;
    notifyListeners();
  }

  Future<void> getArticles() async {
    try {
      List<ArticleModel> articles = await ArticleService().getArticles();
      _articles = articles;
    } catch (e) {
      print(e);
    }
  }
}
