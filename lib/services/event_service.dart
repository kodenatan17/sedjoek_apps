import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/event_model.dart';

class EventService {
  String baseUrl = 'https://backend.sedjoek.id/api';

  Future<List<EventModel>> getEvents() async {
    var url = '$baseUrl/events';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<EventModel> events = [];

      for (var item in data) {
        events.add(EventModel.fromJsonn(item));
      }
      return events;
    } else {
      throw Exception('Gagal Get Events!');
    }
  }
}
