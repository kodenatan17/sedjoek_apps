import 'package:flutter/material.dart';

import '../theme.dart';

class ProfileMenu extends StatelessWidget {
  final String text;
  final String routes;
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.routes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, routes),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultMargin * 1.6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
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
