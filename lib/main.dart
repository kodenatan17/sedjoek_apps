import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedjoek_apps/pages/onboarding_page.dart';
import 'package:sedjoek_apps/pages/sign_in_page.dart';
import 'package:sedjoek_apps/pages/sign_up_page.dart';
import 'package:sedjoek_apps/pages/splash_page.dart';
import 'package:sedjoek_apps/pages/success_sign_up.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sedjoek Apps',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/success-sign-up': (context) => SuccessSignUp(),
      },
    );
  }

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: SplashPage(),
  //   );
  // }

}
