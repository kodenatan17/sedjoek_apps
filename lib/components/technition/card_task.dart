import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/nota_modal.dart';
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
      onTap: () {
      },
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(defaultMargin),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  typeCard == 'notification'
                      ? Icon(
                          Icons.notifications_active,
                          size: 40,
                          color: cardNotification,
                        )
                      : typeCard == 'sourvey'
                          ? Icon(
                              Icons.view_carousel,
                              size: 40,
                              color: cardSourvey,
                            )
                          : typeCard == 'material'
                              ? Icon(
                                  Icons.qr_code,
                                  size: 40,
                                  color: cardMaterial,
                                )
                              : Icon(
                                  Icons.task,
                                  size: 40,
                                  color: cardInstallation,
                                ),
                  Text(
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
                ],
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
      ),
    );
  }
}
