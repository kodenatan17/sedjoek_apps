import 'package:flutter/material.dart';
import 'package:sedjoek_apps/widgets/buttons.dart';
import 'package:sedjoek_apps/widgets/forms.dart';

import '../../theme.dart';
import '../../widgets/agreement_text.dart';
import '../../widgets/header.dart';

class SignInPage extends StatelessWidget {
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomFormField(
          title: "Email Address",
          obscureText: false,
          hintText: "Your Email Address",
          suffixIcon: Icons.email,
        ),
        CustomFormField(
          title: "Password",
          obscureText: true,
          hintText: "Your Password",
          suffixIcon: Icons.key,
        ),
        textForgotPassword(),
        CustomFilledButton(
          title: "Masuk",
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
        ),
      ],
    ),
  );
}

Widget textForgotPassword() {
  return Container(
    alignment: Alignment.centerRight,
    height: 50,
    child: TextButton(
      onPressed: () {},
      child: Text(
        "Lupa Kata Sandi ?",
        style: TextStyle(
          fontSize: 14,
        ),
      ),
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
          'Tidak punya akun ? ',
          style: secondaryTextStyle.copyWith(
            fontSize: 12,
            fontWeight: semiBold,
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/sign-up'),
          child: Text(
            'Daftar Sekarang',
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
