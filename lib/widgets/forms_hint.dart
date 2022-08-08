import 'package:flutter/material.dart';

import '../theme.dart';

class CustomFormFieldHint extends StatelessWidget {
  final bool? obscureText;
  final TextEditingController? controller;
  final String hintText;
  const CustomFormFieldHint({
    Key? key,
    this.obscureText,
    this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
