import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedjoek_apps/pages/technition/qr/barcode_scanner.dart';
import 'package:sedjoek_apps/pages/technition/qr/qr_scanner.dart';

import '../../../components/backup_profile_photo.dart';
import '../../../theme.dart';

class QrPageWarehouse extends StatefulWidget {
  const QrPageWarehouse({Key? key}) : super(key: key);

  @override
  State<QrPageWarehouse> createState() => _QrPageWarehouseState();
}

class _QrPageWarehouseState extends State<QrPageWarehouse> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContent(context),
    );
  }

  Widget buildContent(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.qr_code,
                    size: 40,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.qr_code_scanner,
                    size: 40,
                  ),
                ),
              ],
            ),
            title: Text(
              '  QR / Barcode Scanner',
            ),
          ),
          body: const TabBarView(
            children: [
              QrScannerPage(),
              BarcodeScannerPage(),
            ],
          ),
        ),
      );
}
