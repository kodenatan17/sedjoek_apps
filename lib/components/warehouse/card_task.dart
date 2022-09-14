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
            typeCard == 'inout'
                ? Lottie.asset(
                    'assets/lottie/inout.json',
                    fit: BoxFit.fill,
                  )
                : typeCard == 'order'
                    ? Lottie.asset(
                        'assets/lottie/order.json',
                        fit: BoxFit.fill,
                      )
                    : typeCard == 'stocking'
                        ? Lottie.asset(
                            'assets/lottie/stocking.json',
                            fit: BoxFit.fill,
                          )
                        : Lottie.asset(
                            'assets/lottie/transaction.json',
                            fit: BoxFit.fill,
                          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultMargin * .5,
                        vertical: kDefaultPadding),
                    margin: const EdgeInsets.only(left: kDefaultMargin * .5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: typeCard == 'inout'
                          ? cardInOut
                          : typeCard == 'order'
                              ? cardOrder
                              : typeCard == 'stocking'
                                  ? cardStocking
                                  : cardTransaction,
                    ),
                    child: Text(
                      countCard,
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: semiBold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: typeCard == 'inout'
                        ? cardInOut
                        : typeCard == 'order'
                            ? cardOrder
                            : typeCard == 'stocking'
                                ? cardStocking
                                : cardTransaction,
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
