import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sedjoek_apps/models/technician_schedule_model.dart';

class TechnicianScheduleService {
  String baseUrl = 'http://backend.sedjoek.id/api';

  Future<List<TechnicianScheduleModel>> getTechnicianSchedule() async {
    var url = '$baseUrl/technicianschedules';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<TechnicianScheduleModel> technicialSchedules = [];

      for (var item in data) {
        technicialSchedules.add(TechnicianScheduleModel.fromJson(item));
      }
      return technicialSchedules;
    } else {
      throw Exception('Gagal Get Technician Schedules!');
    }
  }
}
