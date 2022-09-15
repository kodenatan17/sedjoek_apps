import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sedjoek_apps/widgets/buttons.dart';
import 'package:sedjoek_apps/widgets/forms.dart';
import 'package:sedjoek_apps/widgets/loading_button.dart';

import '../../provider/auth_provider.dart';
import '../../theme.dart';
import '../../widgets/agreement_text.dart';
import '../../widgets/header.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _passwordController =
      TextEditingController(text: '');

  final TextEditingController _emailController =
      TextEditingController(text: '');
  bool isLoading = false;

  final isWarehouse = 'WAREHOUSE';
  final isTechnician = 'TECHNICIAN';
  final isUser = 'USER';

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignIn() async {
      setState(() {
        isLoading = true;
      });
      if (await authProvider.login(
        password: _passwordController.text,
        email: _emailController.text,
        roles: isWarehouse,
      )) {
        Navigator.pushNamed(context, '/warehouse/homepage');
      }
      if (await authProvider.login(
        password: _passwordController.text,
        email: _emailController.text,
        roles: isTechnician,
      )) {
        Navigator.pushNamed(context, '/technition/homepage');
      }
      if (await authProvider.login(
        password: _passwordController.text,
        email: _emailController.text,
        roles: isUser,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Gagal Login!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
      setState(() {
        isLoading = false;
      });
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: handleSignIn,
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Masuk',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFormField(
              controller: _emailController,
              title: "Email Address",
              obscureText: false,
              hintText: "Your Email Address",
              suffixIcon: Icons.email,
            ),
            CustomFormField(
              controller: _passwordController,
              title: "Password",
              obscureText: true,
              hintText: "Your Password",
              suffixIcon: Icons.key,
            ),
            textForgotPassword(),
            isLoading ? CustomLoadingButton(title: 'Loading') : signInButton(),
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
