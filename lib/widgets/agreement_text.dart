import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class AgreementText extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      child: RichText(
        text: TextSpan(
          text: 'Dengan menggunakan aplikasi Sedjoek, saya menyetujui segala ',
          style: secondaryTextStyle.copyWith(
            fontSize: 10,
            fontWeight: semiBold,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Syarat dan Ketentuan berlaku',
              style: secondaryTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: semiBold,
                  decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}