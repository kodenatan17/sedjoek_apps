import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sedjoek_apps/pages/authentication/onboarding_page.dart';
import 'package:sedjoek_apps/pages/authentication/sign_in_page.dart';
import 'package:sedjoek_apps/pages/authentication/sign_up_page.dart';
import 'package:sedjoek_apps/pages/authentication/success_sign_up.dart';
import 'package:sedjoek_apps/pages/chat/chat_page.dart';
import 'package:sedjoek_apps/pages/chat/detail_chat_page.dart';
import 'package:sedjoek_apps/pages/guide/help.dart';
import 'package:sedjoek_apps/pages/home/home_page.dart';
import 'package:sedjoek_apps/pages/main_page.dart';
import 'package:sedjoek_apps/pages/product/product_detail.dart';
import 'package:sedjoek_apps/pages/product/product_page.dart';
import 'package:sedjoek_apps/pages/guide/about_us.dart';
import 'package:sedjoek_apps/pages/guide/kebijakan_privasi.dart';
import 'package:sedjoek_apps/pages/profile/profile_edit_page.dart';
import 'package:sedjoek_apps/pages/profile/profile_page.dart';
import 'package:sedjoek_apps/pages/guide/syarat_ketentuan.dart';
import 'package:sedjoek_apps/pages/profile/success_edit_page.dart';
import 'package:sedjoek_apps/pages/promo/promo_page.dart';
import 'package:sedjoek_apps/pages/splash_page.dart';
import 'package:sedjoek_apps/pages/transaction/cart_page.dart';
import 'package:sedjoek_apps/pages/transaction/checkout_page.dart';
import 'package:sedjoek_apps/pages/transaction/checkout_success_page.dart';
import 'package:sedjoek_apps/pages/transaction/payment_page.dart';
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
        //AUTHENTICATION
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/success-sign-up': (context) => SuccessSignUp(),
        '/home': (context) => HomePage(),
        '/main': (context) => const MainPage(),
        //CHAT
        '/chat': (context) => const ChatPage(),
        '/chat-detail': (context) => const DetailChatPage(),
        //PROFILE
        '/profile': (context) => const ProfilePage(),
        '/profile-edit': (context) => const ProfileEditPage(),
        '/success-edit': (context) => const SuccessEditPage(),
        //GUIDE
        '/about-us': (context) => const AboutUsPage(),
        '/syarat-ketentuan': (context) => const SyaratKetentuanPage(),
        '/kebijakan-privasi': (context) => const KebijakanPrivasiPage(),
        '/help': (context) => const HelpPage(),
        //WISHLIST
        '/wishlist': (context) => const WishlistPage(),
        //PRODUCT
        '/product': (context) => const ProductPage(),
        '/product-detail': (context) => const DetailProductPage(),
        //TRANSACTION
        '/cart-page': (context) => const CartPage(),
        '/checkout-page': (context) => const CheckoutPage(),
        '/checkout-success': (context) => const CheckoutSuccessPage(),
        '/payment-page': (context) => const PaymentPage(),
        //PROMO
        '/promo-page': (context) => const PromoPage(),
      },
    );
  }

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: PaymentPage(),
  //   );
  // }
}
