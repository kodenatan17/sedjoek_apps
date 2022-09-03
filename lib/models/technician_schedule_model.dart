import 'package:sedjoek_apps/models/transaction_model.dart';
import 'package:sedjoek_apps/models/transaction_periode_model.dart';
import 'package:sedjoek_apps/models/user_model.dart';

class TechnicianScheduleModel {
  int? id;
  late UserModel user;
  late TransactionModel transaction;
  late TransactionPeriodeModel transactionPeriode;

  TechnicianScheduleModel({
    required this.id,
    required this.user,
    required this.transaction,
    required this.transactionPeriode,
  });

  TechnicianScheduleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = UserModel.fromJson(json['users_id']);
    transaction = TransactionModel.fromJson(json['transaction_id']);
    transactionPeriode =
        TransactionPeriodeModel.fromJson(json['transaction_periode_id']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'users_id': user,
      'transaction_id': transaction,
      'transaction_periode_id': transactionPeriode,
    };
  }
}
