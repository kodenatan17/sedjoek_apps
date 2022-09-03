import 'dart:js_util';

import 'package:sedjoek_apps/models/transaction_stock_model.dart';
import 'package:sedjoek_apps/models/user_model.dart';

class TransactionModel {
  int? id;
  late UserModel user;
  late TransactionStockModel transactionStock;
  String? address;
  double? totalPrice;
  double? shippingPrice;
  String? status;
  String? payment;
  String? photoLocation;
  String? photoPointInstallation;
  String? photoUnit;
  String? photoIndoorInstallation;
  String? photoOutdoorInstallation;
  String? photoAcOn;
  String? photoPipeUsed;
  String? descriptionSurvey;
  String? descriptionInstall;
  String? descriptionFinish;

  TransactionModel({
    required this.id,
    required this.user,
    required this.transactionStock,
    required this.address,
    required this.totalPrice,
    required this.shippingPrice,
    required this.status,
    required this.payment,
    required this.photoLocation,
    required this.photoPointInstallation,
    required this.photoUnit,
    required this.photoIndoorInstallation,
    required this.photoOutdoorInstallation,
    required this.photoAcOn,
    required this.photoPipeUsed,
    required this.descriptionSurvey,
    required this.descriptionInstall,
    required this.descriptionFinish,
  });

  TransactionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = UserModel.fromJson(json['users_id']);
    transactionStock = TransactionStockModel.fromJson(json['transaction_stock_id']);
    address = json['address'];
    totalPrice = json['total_price'];
    shippingPrice = json['shipping_price'];
    status = json['status'];
    payment = json['payment'];
    photoLocation = json['photoLocation'];
    photoPointInstallation = json['photo_point_installation'];
    photoUnit = json['photo_unit'];
    photoIndoorInstallation = json['photo_indoor_installation'];
    photoOutdoorInstallation = json['photo_outdoor_installation'];
    photoAcOn = json['photo_ac_on'];
    photoPipeUsed = json['photo_pipe_used'];
    descriptionSurvey = json['description_survey'];
    descriptionInstall = json['description_install'];
    descriptionFinish = json['description_finish'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id,
      'users_id' : user,
      'transaction_stock_id' : transactionStock,
      'address' : address,
      'total_price' : totalPrice,
      'shipping_price' : shippingPrice,
      'status' : status,
      'payment' : payment,
      'photo_location' : photoLocation,
      'photo_unit' : photoUnit,
      'photo_indoor_installation' : photoIndoorInstallation,
      'photo_outdoor_installation' : photoOutdoorInstallation,
      'photo_ac_on' : photoAcOn,
      'photo_pipe_used' : photoPipeUsed,
      'description_survey' : descriptionSurvey,
      'description_install' : descriptionInstall,
      'description_finish' : descriptionFinish,
    };
  }
}
