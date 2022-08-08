import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class CustomOutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color colorBorder;
  final TextStyle style;

  const CustomOutlineButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.colorBorder,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: colorBorder,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultCircular),
        ),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
