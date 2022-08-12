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
  final TextEditingController _passController = TextEditingController(text: '');

  final TextEditingController _emailController =
      TextEditingController(text: '');
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignIn() async {
      setState(() {
        isLoading = true;
      });
      if (await authProvider.register(
        password: _passController.text,
        email: _emailController.text,
      )) {
        Navigator.pushNamed(context, '/home');
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
              bodyContainer(
                context,
                _passController,
                _emailController,
                handleSignIn(),
                isLoading,
              ),
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

Widget bodyContainer(
  BuildContext context,
  TextEditingController _passwordController,
  TextEditingController _emailController,
  Future handleSignIn,
  bool isLoading,
) {
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
        isLoading
            ? CustomLoadingButton(title: 'Loading')
            : CustomFilledButton(
                title: "Masuk",
                onPressed: () {
                  handleSignIn;
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
