import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/event_model.dart';
import 'package:sedjoek_apps/services/event_service.dart';

class EventProvider with ChangeNotifier {
  List<EventModel> _events = [];

  List<EventModel> get events => _events;

  set events(List<EventModel> events) {
    _events = events;
    notifyListeners();
  }

  Future<void> getEvents() async {
    try {
      List<EventModel> events = await EventService().getEvents();
      _events = events;
    } catch (e) {
      print(e);
    }
  }
}
