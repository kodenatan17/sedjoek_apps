import 'package:flutter/material.dart';
import 'package:sedjoek_apps/pages/warehouse/stock/stock_opname.dart';

import '../../../components/backup_profile_photo.dart';
import '../../../components/warehouse/card_task.dart';
import '../../../theme.dart';

class HomePageWarehouse extends StatelessWidget {
  const HomePageWarehouse({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 50),
        child: ClipPath(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/bg-header.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: buildProfile(),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: buildDashboard(context),
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(top: defaultMargin, left: defaultMargin),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackupPhotoProfile(
            isVerified: true,
          ),
          SizedBox(
            width: defaultMargin,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hallo,",
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Kawan Warehouse',
                style: titleTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDashboard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultMargin),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: kDefaultMargin * 2,
        mainAxisSpacing: kDefaultMargin * 2,
        children: [
          CardTask(
            titleCard: 'In & Out',
            countCard: '4',
            typeCard: "inout",
          ),
          CardTask(
            titleCard: 'Order',
            countCard: '2',
            typeCard: 'order',
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/warehouse/stock-opname');
            },
            child: CardTask(
              titleCard: 'Stock Opname',
              countCard: '3',
              typeCard: 'stocking',
            ),
          ),
          CardTask(
            titleCard: 'Transaction',
            countCard: '3',
            typeCard: 'transaction',
          ),
        ],
      ),
    );
  }
}
