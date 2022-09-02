import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sedjoek_apps/theme.dart';

class CardTask extends StatelessWidget {
  final String titleCard;
  final String countCard;
  final String typeCard;
  const CardTask({
    Key? key,
    required this.titleCard,
    required this.countCard,
    required this.typeCard,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultMargin),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            typeCard == 'notification'
                ? Lottie.asset(
                    'assets/lottie/maintenance.json',
                    fit: BoxFit.fill,
                  )
                : typeCard == 'sourvey'
                    ? Lottie.asset(
                        'assets/lottie/survey.json',
                        fit: BoxFit.fill,
                      )
                    : typeCard == 'material'
                        ? Lottie.asset(
                            'assets/lottie/installation.json',
                            fit: BoxFit.fill,
                          )
                        : Lottie.asset(
                            'assets/lottie/troubleshoot.json',
                            fit: BoxFit.fill,
                          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultMargin * .5,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: typeCard == 'notification'
                        ? cardNotification
                        : typeCard == 'sourvey'
                            ? cardSourvey
                            : typeCard == 'material'
                                ? cardMaterial
                                : cardInstallation,
                  ),
                  child: Text(
                    countCard,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: semiBold,
                      color: typeCard == 'notification'
                          ? cardNotification
                          : typeCard == 'sourvey'
                              ? cardSourvey
                              : typeCard == 'material'
                                  ? cardMaterial
                                  : cardInstallation,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: typeCard == 'notification'
                        ? cardNotification
                        : typeCard == 'sourvey'
                            ? cardSourvey
                            : typeCard == 'material'
                                ? cardMaterial
                                : cardInstallation,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(defaultMargin),
                      bottomLeft: Radius.circular(defaultMargin),
                    ),
                  ),
                  child: Text(
                    titleCard,
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
