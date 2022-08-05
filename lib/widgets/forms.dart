import 'package:flutter/material.dart';

import '../theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final IconData? suffixIcon;
  final String hintText;
  const CustomFormField({
    Key? key,
    required this.title,
    required this.obscureText,
    this.controller,
    this.suffixIcon,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kDefaultCircular),
                border: Border.all(color: Colors.black12)),
            child: Center(
              child: Row(
                children: [
                  Icon(suffixIcon!),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: hintText,
                        hintStyle: secondaryTextStyle.copyWith(fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
