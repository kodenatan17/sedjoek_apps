import 'package:sedjoek_apps/models/transaction_model.dart';

class TransactionPeriodeModel {
  int? id;
  late TransactionModel transaction;
  DateTime? startedAt;
  DateTime? finishedAt;
  String? status;

  TransactionPeriodeModel({
    required this.id,
    required this.transaction,
    required this.startedAt,
    required this.finishedAt,
    required this.status,
  });

  TransactionPeriodeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    transaction = TransactionModel.fromJson(json['transaction_id']);
    startedAt = DateTime.parse(json['started_at']);
    finishedAt = DateTime.parse(json['finishedAt']);
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transaction_id': transaction,
      'started_at': startedAt,
      'finished_at': finishedAt,
      'status': status,
    };
  }
}
