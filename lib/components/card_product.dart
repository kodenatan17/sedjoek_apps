import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sedjoek_apps/theme.dart';
import 'package:sedjoek_apps/widgets/buttons.dart';

class CardProduct extends StatelessWidget {
  final String namaProduct;
  final String descProduct;
  final String hargaProduct;
  final String bgProduct;
  final VoidCallback onTap;

  const CardProduct({
    Key? key,
    required this.namaProduct,
    required this.descProduct,
    required this.hargaProduct,
    required this.bgProduct,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultMargin),
                  image: DecorationImage(
                    image: AssetImage(
                      bgProduct,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: kDefaultMargin * 2),
                    child: Lottie.asset(
                      'assets/lottie/ac.json',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Container(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      namaProduct,
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      descProduct,
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(kDefaultCircular),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        hargaProduct,
                        style: whiteTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: semiBold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
