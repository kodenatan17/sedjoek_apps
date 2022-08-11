import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Hai Galih Wicaksana, Djeoki siap membantu kamu',
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultCircular),
            bottomRight: Radius.circular(kDefaultCircular),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding * 2),
        child: Column(
          children: [
            ListView(
              
            )
          ],
        ),
      ),
    );
  }
}
