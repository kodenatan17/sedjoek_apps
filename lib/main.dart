import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sedjoek_apps/pages/authentication/onboarding_page.dart';
import 'package:sedjoek_apps/pages/authentication/sign_in_page.dart';
import 'package:sedjoek_apps/pages/authentication/sign_up_page.dart';
import 'package:sedjoek_apps/pages/authentication/success_sign_up.dart';
import 'package:sedjoek_apps/pages/chat/chat_page.dart';
import 'package:sedjoek_apps/pages/chat/detail_chat_page.dart';
import 'package:sedjoek_apps/pages/home/home_page.dart';
import 'package:sedjoek_apps/pages/main_page.dart';
import 'package:sedjoek_apps/pages/product/product_detail.dart';
import 'package:sedjoek_apps/pages/product/product_page.dart';
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
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Sedjoek Apps',
  //     debugShowCheckedModeBanner: false,
  //     routes: {
  //       '/': (context) => SplashPage(),
  //       '/onboarding': (context) => OnboardingPage(),
  //       '/sign-in': (context) => SignInPage(),
  //       '/sign-up': (context) => SignUpPage(),
  //       '/success-sign-up': (context) => SuccessSignUp(),
  //       '/home': (context) => HomePage(),
  //       '/main': (context) => const MainPage(),
  //       '/chat': (context) => const ChatPage(),
  //       '/chat-detail': (context) => const DetailChatPage(),
  //       '/profile': (context) => const ProfilePage(),
  //       '/wishlist': (context) => const WishlistPage(),
  //       '/product': (context) => const ProductPage(),
  //       '/product-detail': (context) => const DetailProductPage(),
  //     },
  //   );
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('de', ''),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
