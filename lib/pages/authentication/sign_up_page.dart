import 'package:flutter/material.dart';
import 'package:sedjoek_apps/widgets/buttons.dart';
import 'package:sedjoek_apps/widgets/forms.dart';

import '../../theme.dart';
import '../../widgets/agreement_text.dart';
import '../../widgets/header.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              bodyContainer(context),
              AgreementText(),
              Spacer(),
              footerContainer(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget bodyContainer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.symmetric(
      horizontal: kDefaultPadding,
      vertical: kDefaultPadding,
    ),
    margin: const EdgeInsets.only(top: defaultMargin / 2),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(kDefaultCircular),
    ),
    child: Column(
      children: [
        CustomFormField(
          title: "Name",
          obscureText: true,
          hintText: "Your Name",
          suffixIcon: Icons.people,
        ),
        CustomFormField(
          title: "Email",
          obscureText: false,
          hintText: "Your Email",
          suffixIcon: Icons.email,
        ),
        CustomFormField(
          title: "Password",
          obscureText: true,
          hintText: "Your Password",
          suffixIcon: Icons.key,
        ),
        CustomFilledButton(
          title: "Daftar",
          onPressed: () {},
        ),
      ],
    ),
  );
}

Widget footerContainer(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sudah punya akun ? ',
          style: secondaryTextStyle.copyWith(
            fontSize: 12,
            fontWeight: semiBold,
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/sign-in'),
          child: Text(
            'Masuk',
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ),
      ],
    ),
  );
}
