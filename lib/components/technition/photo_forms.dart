import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../theme.dart';

class PhotoForms extends StatelessWidget {
  const PhotoForms({
    Key? key,
    required this.titlePhoto,
    required this.technitionName,
  }) : super(key: key);

  final String titlePhoto;
  final String technitionName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            titlePhoto,
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: kDefaultPadding),
          Container(
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor1,
            ),
            child: Center(
              child: Lottie.asset(
                'assets/lottie/upload.json',
                width: 150,
              ),
            ),
          ),
          const SizedBox(
            height: defaultMargin,
          ),
          Text(
            technitionName,
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
