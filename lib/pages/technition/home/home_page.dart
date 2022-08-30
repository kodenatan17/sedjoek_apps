import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/technition/card_task.dart';

import '../../../components/backup_profile_photo.dart';
import '../../../components/photo_profile.dart';
import '../../../theme.dart';

class HomePageTechnition extends StatelessWidget {
  const HomePageTechnition({Key? key}) : super(key: key);

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
        child: buildDashboard(),
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
                'Kawan Teknisi',
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

  Widget buildDashboard() {
    return Container(
      padding: const EdgeInsets.all(kDefaultMargin),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: kDefaultMargin * 2,
        mainAxisSpacing: kDefaultMargin * 2,
        children: [
          CardTask(
            titleCard: 'Notifikasi',
            countCard: '4',
            typeCard: "notification",
          ),
          CardTask(
            titleCard: 'Survey',
            countCard: '2',
            typeCard: 'sourvey',
          ),
          CardTask(
            titleCard: 'Material',
            countCard: '3',
            typeCard: 'material',
          ),
          CardTask(
            titleCard: 'Installation',
            countCard: '3',
            typeCard: 'installation',
          ),
        ],
      ),
    );
  }
}
