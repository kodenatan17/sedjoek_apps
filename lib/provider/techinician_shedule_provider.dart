import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/technician_schedule_model.dart';
import 'package:sedjoek_apps/services/technician_schedule_service.dart';

class TechnicianScheduleProvider with ChangeNotifier {
  List<TechnicianScheduleModel> _technicianSchedules = [];

  List<TechnicianScheduleModel> get technicianSchedules => _technicianSchedules;

  set technicianSchedules(List<TechnicianScheduleModel> technicianSchedules) {
    _technicianSchedules = technicianSchedules;
    notifyListeners();
  }

  Future<void> getTechnicianSchedule() async {
    try {
      List<TechnicianScheduleModel> technicialSchedules =
          await TechnicianScheduleService().getTechnicianSchedule();
      _technicianSchedules = technicialSchedules;
    } catch (e) {
      print(e);
    }
  }
}
