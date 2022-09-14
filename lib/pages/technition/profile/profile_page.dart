import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sedjoek_apps/components/profile_list.dart';
import 'package:sedjoek_apps/theme.dart';

import '../../../components/profile_menu.dart';

class ProfilePageTechnition extends StatelessWidget {
  const ProfilePageTechnition({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg-effect.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            buildNavbar(),
            buildProfilePhoto(),
            buildDivider('Akun'),
            buildProfileDetail(),
            buildDivider('General'),
            buildMenuList(),
          ],
        ),
      ),
    );
  }

  Widget buildNavbar() {
    return Container(
      padding: const EdgeInsets.only(right: defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/icons/logo-profile.png'),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/ico_logout.png'),
          ),
        ],
      ),
    );
  }

  Widget buildProfilePhoto() {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultMargin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/icons/default_profile.png'),
          Text(
            'Galih Wicaksana',
            style: primaryTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'galihwicaksana@gmail.com',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
            ),
          ),
          Text(
            '+6282114155395',
            style: primaryTextStyle.copyWith(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDivider(String title) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            height: 10,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              title,
              style: primaryTextStyle.copyWith(fontWeight: semiBold),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            height: 10,
          ),
        ),
      ],
    );
  }

  Widget buildProfileDetail() {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileList(text: 'Edit Profile', routes: '/profile-edit'),
            const Divider(
              thickness: 2,
            ),
            const ProfileList(text: 'Bantuan', routes: '/help'),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuList() {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileList(
                text: 'Tentang Seddjoek', routes: '/profile-edit'),
            const Divider(
              thickness: 2,
            ),
            const ProfileList(text: 'Kebijakan Privasi', routes: '/kebijakan-privasi'),
            const Divider(
              thickness: 2,
            ),
            const ProfileList(text: 'Syarat dan Ketentuan', routes: '/syarat-ketentuan'),
            const Divider(
              thickness: 2,
            ),
            const ProfileList(text: 'Rate Aplikasi', routes: '/rate-aplikasi'),
            const Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
