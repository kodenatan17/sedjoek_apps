import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sedjoek_apps/pages/authentication/onboarding_page.dart';
import 'package:sedjoek_apps/pages/authentication/sign_in_page.dart';
import 'package:sedjoek_apps/pages/authentication/sign_up_page.dart';
import 'package:sedjoek_apps/pages/authentication/success_sign_up.dart';
import 'package:sedjoek_apps/pages/chat/chat_page.dart';
import 'package:sedjoek_apps/pages/chat/detail_chat_page.dart';
import 'package:sedjoek_apps/pages/guide/help.dart';
import 'package:sedjoek_apps/pages/guide/notification.dart';
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
import 'package:sedjoek_apps/pages/technition/home/home_page.dart';
import 'package:sedjoek_apps/pages/technition/main_page.dart';
import 'package:sedjoek_apps/pages/technition/notification/notification_page.dart';
import 'package:sedjoek_apps/pages/technition/profile/profile_page.dart';
import 'package:sedjoek_apps/pages/technition/project/project_page.dart';
import 'package:sedjoek_apps/pages/technition/qr/qr_page.dart';
import 'package:sedjoek_apps/pages/transaction/cart_page.dart';
import 'package:sedjoek_apps/pages/transaction/checkout_page.dart';
import 'package:sedjoek_apps/pages/transaction/checkout_success_page.dart';
import 'package:sedjoek_apps/pages/transaction/payment_page.dart';
import 'package:sedjoek_apps/pages/warehouse/home/home_page.dart';
import 'package:sedjoek_apps/pages/warehouse/main_page.dart';
import 'package:sedjoek_apps/pages/warehouse/notification/notification_page.dart';
import 'package:sedjoek_apps/pages/warehouse/profile/profile_page.dart';
import 'package:sedjoek_apps/pages/warehouse/stock/stock_page.dart';
import 'package:sedjoek_apps/pages/wishlist/wishlist_page.dart';
import 'package:sedjoek_apps/provider/article_provider.dart';
import 'package:sedjoek_apps/provider/auth_provider.dart';
import 'package:sedjoek_apps/provider/banner_provider.dart';
import 'package:sedjoek_apps/provider/category_provider.dart';
import 'package:sedjoek_apps/provider/event_provider.dart';
import 'package:sedjoek_apps/provider/product_provider.dart';
import 'package:sedjoek_apps/provider/promo_provider.dart';
import 'package:sedjoek_apps/provider/stock_provider.dart';
import 'package:sedjoek_apps/provider/techinician_shedule_provider.dart';
import 'package:sedjoek_apps/provider/transaction_periode_provider.dart';
import 'package:sedjoek_apps/provider/transaction_provider.dart';
import 'package:sedjoek_apps/provider/transaction_stock_provider.dart';
import 'package:sedjoek_apps/provider/user_detail_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // Widget build(BuildContext context) {
  //   return MultiProvider(
  //     providers: [
  //       ChangeNotifierProvider(
  //         create: (context) => AuthProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => ProductProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => ArticleProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => BannerProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => CategoryProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => EventProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => PromoProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => UserDetailProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => StockProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => TransactionProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => TechnicianScheduleProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => TransactionPeriodeProvider(),
  //       ),
  //       ChangeNotifierProvider(
  //         create: (context) => TransactionStockProvider(),
  //       ),
  //     ],
  //     child: MaterialApp(
  //       title: 'Sedjoek Apps',
  //       debugShowCheckedModeBanner: false,
  //       routes: {
  //         //AUTHENTICATION
  //         '/': (context) => SplashPage(),
  //         '/onboarding': (context) => OnboardingPage(),
  //         '/sign-in': (context) => SignInPage(),
  //         '/sign-up': (context) => SignUpPage(),
  //         '/success-sign-up': (context) => SuccessSignUp(),
  //         '/home': (context) => HomePage(),
  //         '/main': (context) => const MainPage(),
  //         //CHAT
  //         '/chat': (context) => const ChatPage(),
  //         '/chat-detail': (context) => const DetailChatPage(),
  //         //PROFILE
  //         '/profile': (context) => ProfilePage(),
  //         '/profile-edit': (context) => const ProfileEditPage(),
  //         '/success-edit': (context) => const SuccessEditPage(),
  //         //GUIDE
  //         '/about-us': (context) => const AboutUsPage(),
  //         '/syarat-ketentuan': (context) => const SyaratKetentuanPage(),
  //         '/kebijakan-privasi': (context) => const KebijakanPrivasiPage(),
  //         '/help': (context) => const HelpPage(),
  //         '/notification': (context) => const NotificationPage(),
  //         //WISHLIST
  //         '/wishlist': (context) => const WishlistPage(),
  //         //PRODUCT
  //         '/product': (context) => const ProductPage(),
  //         '/product-detail': (context) => const DetailProductPage(),
  //         //TRANSACTION
  //         '/cart-page': (context) => const CartPage(),
  //         '/checkout-page': (context) => const CheckoutPage(),
  //         '/checkout-success': (context) => const CheckoutSuccessPage(),
  //         '/payment-page': (context) => const PaymentPage(),
  //         //PROMO
  //         '/promo-page': (context) => const PromoPage(),

  //         //WAREHOUSE
  //         '/warehouse/home-page': (context) => const HomePageWarehouse(),
  //         '/warehouse/notification-page': (context) =>
  //             const NotificationPageWarehouse(),
  //         '/warehouse/stock-page': (context) => const StockPageWarehouse(),
  //         '/warehouse/profile-page': (context) => const ProfilePageWarehouse(),
  //         '/warehouse/': (context) => const MainPageWarehouse(),

  //         // TECHNITION
  //         '/technition/home-page': (context) => const HomePageTechnition(),
  //         '/technition/notification-page': (context) =>
  //             const NotificationPageTechinition(),
  //         '/technition/profile-page': (context) =>
  //             const ProfilePageTechnition(),
  //         '/technition/project-page': (context) =>
  //             const ProjectPageTechnition(),
  //         '/technition/': (context) => const MainPageTechnition(),
  //         '/technition/qr-page': (context) => const QrPageTechnition(),
  //       },
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        // TECHNITION
        '/technition/home-page': (context) => const HomePageTechnition(),
        '/technition/notification-page': (context) =>
            const NotificationPageTechinition(),
        '/technition/profile-page': (context) => const ProfilePageTechnition(),
        '/technition/project-page': (context) => const ProjectPageTechnition(),
        '/': (context) => const MainPageTechnition(),
        '/technition/qr-page': (context) => const QrPageTechnition(),
      },
    );
  }
}
