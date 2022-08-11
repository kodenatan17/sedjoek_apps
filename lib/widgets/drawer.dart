import 'package:flutter/material.dart';
import 'package:sedjoek_apps/models/model_drawer.dart';
import 'package:sedjoek_apps/theme.dart';

import '../data/drawer_items.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: [
            buildDrawerItems(context),
          ],
        ),
      );
}

Widget buildDrawerItems(BuildContext context) => Column(
      children: DrawerItems.all
          .map(
            (item) => ListTile(
              title: Text(
                item.title,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              onTap: (){},
            ),
          )
          .toList(),
    );
