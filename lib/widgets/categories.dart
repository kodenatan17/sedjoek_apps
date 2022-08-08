import 'package:flutter/material.dart';

import '../theme.dart';

class CustomCategoriesNav extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isActive;
  const CustomCategoriesNav({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: isActive
            ? ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
              )
            : ElevatedButton.styleFrom(
                backgroundColor: transparentColor,
              ),
        child: Text(
          title,
          style: isActive
              ? whiteTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                )
              : secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
        ),
      ),
    );
  }
}
