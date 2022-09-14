import 'package:flutter/material.dart';
import 'package:sedjoek_apps/pages/warehouse/stock/additional_tools.dart';
import 'package:sedjoek_apps/pages/warehouse/stock/installation_tools.dart';
import 'package:sedjoek_apps/pages/warehouse/stock/maintenance_tools.dart';

class StockPageWarehouse extends StatelessWidget {
  const StockPageWarehouse({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration(milliseconds: 1000),
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            elevation: 0,
            flexibleSpace: Container(
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg-header.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.transparent,
                indicatorWeight: 0.1,
                tabs: [
                  Tab(
                    text: 'Additional',
                  ),
                  Tab(
                    text: 'Installation',
                  ),
                  Tab(
                    text: 'Maintenance',
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            AdditionalTools(),
            InstallationTools(),
            MaintenanceTools(),
          ],
        ),
      ),
    );
  }
}
