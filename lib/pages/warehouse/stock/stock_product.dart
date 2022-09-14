import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:collapsible_sidebar/collapsible_sidebar/collapsible_item.dart';
import 'package:flutter/material.dart';
import 'package:sedjoek_apps/widgets/sewa.dart';

import '../../../config/size_config.dart';
import '../../../theme.dart';

class StockProduct extends StatefulWidget {
  final String nameProduct;
  final String imageProduct;
  final String description;
  final Color bgColor;
  final Color titleColor;

  const StockProduct({
    super.key,
    required this.nameProduct,
    required this.imageProduct,
    required this.description,
    required this.bgColor,
    required this.titleColor,
  });

  @override
  State<StockProduct> createState() => _StockProductState();
}

class _StockProductState extends State<StockProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: widget.bgColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getProportionateScreenHeight(350),
              width: getProportionateScreenWidth(300),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/snowflake.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Container(
                  width: getProportionateScreenWidth(400),
                  height: getProportionateScreenHeight(300),
                  child: Image.asset(
                    widget.imageProduct,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(defaultMargin / 2),
                right: getProportionateScreenWidth(defaultMargin),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Air Conditioner',
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(30),
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: semiBold),
                  ),
                  Text(
                    widget.nameProduct,
                    style: whiteTextStyle.copyWith(
                      fontSize: getProportionateScreenWidth(40),
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: Color(0XFFCaF0e8),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "READ MORE",
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultMargin,
                  ),
                  SewaButton(
                    buttonText: 'Sewa Sekarang',
                    width: double.infinity,
                    onpressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
