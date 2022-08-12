import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sedjoek_apps/components/profile_menu.dart';
import 'package:sedjoek_apps/models/user_model.dart';
import 'package:sedjoek_apps/provider/auth_provider.dart';
import 'package:sedjoek_apps/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    user.profilePhotoPath!,
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: kDefaultPadding * 1.6,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name!,
                        style: primaryTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        user.email!,
                        style: secondaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        user.phone!,
                        style: secondaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/icons/ico_logout.png',
                  width: 20,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(color: backgroundColor1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: kDefaultPadding * 1.6,
              ),
              Text(
                'Akun',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              ProfileMenu(text: 'Edit Profile', routes: '/profile-edit'),
              ProfileMenu(text: 'Bantuan', routes: '/help'),
              SizedBox(
                height: kDefaultPadding * 1.6,
              ),
              Text(
                'General',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              ProfileMenu(text: 'Tentang Sedjoek', routes: '/about-us'),
              ProfileMenu(
                  text: 'Kebijakan Privasi', routes: '/kebijakan-privasi'),
              ProfileMenu(
                  text: 'Syarat & Ketentuan', routes: '/syarat-ketentuan'),
              ProfileMenu(text: 'Rate Aplikasi', routes: '/rate-aplikasi'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
