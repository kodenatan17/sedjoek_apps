import 'package:sedjoek_apps/models/dummy/customer_model.dart';
import 'package:sedjoek_apps/models/dummy/invoice_model.dart';
import 'package:sedjoek_apps/models/dummy/supplier_model.dart';
import 'package:sedjoek_apps/models/dummy/technition_model.dart';

class Bast{
  final BastInfo info;
  final Invoice invoice;
  final Technition techinition;

  const Bast({
    required this.info,
    required this.invoice,
    required this.techinition,
  });
}

class BastInfo {
  final String pic;
  final String date;
  final String office;
  final String address;
  final String handphone;

  const BastInfo({
    required this.pic,
    required this.date,
    required this.office,
    required this.address,
    required this.handphone,
  });
}
