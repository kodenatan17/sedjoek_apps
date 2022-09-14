import 'package:flutter/material.dart';

import '../theme.dart';

class ProfileList extends StatelessWidget {
  final String text;
  final String routes;
  const ProfileList({
    Key? key,
    required this.text,
    required this.routes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, routes),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
        margin: const EdgeInsets.only(top: kDefaultMargin * 1.6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
