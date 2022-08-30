import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/user_detail_model.dart';
import 'package:sedjoek_apps/services/user_detail_service.dart';

class UserDetailProvider with ChangeNotifier {
  List<UserDetailModel> _userDetails = [];

  List<UserDetailModel> get userDetails => _userDetails;

  set userDetails(List<UserDetailModel> userDetails) {
    _userDetails = userDetails;
    notifyListeners();
  }

  Future<void> getUserDetails() async {
    try {
      List<UserDetailModel> userDetails =
          await UserDetailService().getUserDetails();
      _userDetails = userDetails;
    } catch (e) {
      print(e);
    }
  }
}
