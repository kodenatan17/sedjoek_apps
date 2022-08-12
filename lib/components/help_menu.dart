import 'package:flutter/material.dart';

import '../theme.dart';

class HelpMenu extends StatelessWidget {
  final String text;
  const HelpMenu({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
