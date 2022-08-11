import 'package:flutter/material.dart';

import '../../theme.dart';
import '../../widgets/buttons.dart';

class SuccessEditPage extends StatelessWidget{
  const SuccessEditPage ({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Material(
      type: MaterialType.transparency,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: backgroundColor1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Akun Berhasil\nTerdaftar",
              style: titleTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              "Data kamu berhasil diperbarui\nAyo pesan si Djoeki",
              style: secondaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              title: 'Ayo Pesan',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/profile', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}