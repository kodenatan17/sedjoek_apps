import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedjoek_apps/pages/technition/qr/barcode_scanner.dart';
import 'package:sedjoek_apps/pages/technition/qr/qr_scanner.dart';

import '../../../components/backup_profile_photo.dart';
import '../../../theme.dart';

class QrPageTechnition extends StatefulWidget {
  const QrPageTechnition({Key? key}) : super(key: key);

  @override
  State<QrPageTechnition> createState() => _QrPageTechnitionState();
}

class _QrPageTechnitionState extends State<QrPageTechnition> {
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
