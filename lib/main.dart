import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedjoek_apps/pages/authentication/onboarding_page.dart';
import 'package:sedjoek_apps/pages/authentication/sign_in_page.dart';
import 'package:sedjoek_apps/pages/authentication/sign_up_page.dart';
import 'package:sedjoek_apps/pages/authentication/success_sign_up.dart';
import 'package:sedjoek_apps/pages/chat/chat_page.dart';
import 'package:sedjoek_apps/pages/chat/detail_chat_page.dart';
import 'package:sedjoek_apps/pages/home/home_page.dart';
import 'package:sedjoek_apps/pages/main_page.dart';
import 'package:sedjoek_apps/pages/profile/profile_page.dart';
import 'package:sedjoek_apps/pages/splash_page.dart';
import 'package:sedjoek_apps/pages/wishlist/wishlist_page.dart';

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
        '/home' : (context) => HomePage(),
        '/main' : (context) => MainPage(),
        '/chat' : (context)=> ChatPage(),
        '/chat-detail' : (context) => DetailChatPage(),
        '/profile' : (context) => ProfilePage(),
        '/wishlist' : (context) => WishlistPage(),

      },
    );
  }

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: MainPage(),
  //   );
  // }

}
