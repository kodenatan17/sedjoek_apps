import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/user_detail_model.dart';

class UserDetailService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<UserDetailModel>> getUserDetails() async {
    var url = '$baseUrl/user_details';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<UserDetailModel> userDetails = [];

      for (var item in data) {
        userDetails.add(UserDetailModel.fromJson(item));
      }
      return userDetails;
    } else {
      throw Exception('Gagal Get UserDetails');
    }
  }
}
