import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sedjoek_apps/provider/auth_provider.dart';
import 'package:sedjoek_apps/widgets/buttons.dart';
import 'package:sedjoek_apps/widgets/forms.dart';

import '../../theme.dart';
import '../../widgets/agreement_text.dart';
import '../../widgets/header.dart';
import '../../widgets/loading_button.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController(text: '');

  final TextEditingController _passController = TextEditingController(text: '');

  final TextEditingController _emailController =
      TextEditingController(text: '');
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      setState(() {
        isLoading = true;
      });
      if (await authProvider.register(
        name: _nameController.text,
        password: _passController.text,
        email: _emailController.text,
      )) {
        Navigator.pushNamed(context, '/main');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Gagal Register!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
      setState(() {
        isLoading = false;
      });
    }

    Widget signUpButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: handleSignUp,
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Daftar',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget bodyContainer() {
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
              controller: _nameController,
              title: "Name",
              obscureText: false,
              hintText: "Your Name",
              suffixIcon: Icons.people,
            ),
            CustomFormField(
              controller: _emailController,
              title: "Email",
              obscureText: false,
              hintText: "Your Email",
              suffixIcon: Icons.email,
            ),
            CustomFormField(
              controller: _passController,
              title: "Password",
              obscureText: true,
              hintText: "Your Password",
              suffixIcon: Icons.key,
            ),
            isLoading
                ? CustomLoadingButton(
                    title: 'Loading',
                  )
                : signUpButton(),
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
              bodyContainer(),
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
