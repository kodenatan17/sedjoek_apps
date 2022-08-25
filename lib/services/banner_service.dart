import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/banner_model.dart';

class BannerService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<BannerModel>> getBanners() async {
    var url = '$baseUrl/banners';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<BannerModel> banners = [];

      for (var item in data) {
        banners.add(BannerModel.fromJson(item));
      }
      return banners;
    } else {
      throw Exception('Gagal Get Banners');
    }
  }
}
