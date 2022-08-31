import 'package:flutter/material.dart';
import 'package:sedjoek_apps/pages/technition/project/complete_page.dart';
import 'package:sedjoek_apps/pages/technition/project/installation_page.dart';
import 'package:sedjoek_apps/pages/technition/project/survey_page.dart';

class ProjectPageTechnition extends StatelessWidget {
  const ProjectPageTechnition({Key? key}) : super(key: key);

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
                    text: 'Survey',
                  ),
                  Tab(
                    text: 'Installation',
                  ),
                  Tab(
                    text: 'Complete',
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
            SurveyPage(),
            InstallationPage(),
            CompletePage(),
          ],
        ),
      ),
    );
  }
}
