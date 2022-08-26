import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/card_product.dart';
import 'package:sedjoek_apps/widgets/header.dart';
import 'package:sedjoek_apps/widgets/wave_appbar.dart';

import '../../theme.dart';

class ProductPage extends StatefulWidget implements PreferredSizeWidget {
  const ProductPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 100.0);
}

class _ProductPageState extends State<ProductPage> {
  final double barHeight = 50.0;

  Widget buildCategories() {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultMargin, left: kDefaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: Colors.white,
              ),
              child: Text(
                'Semua AC',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: transparentColor,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                'Paket AC 1 PK',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: transparentColor,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                'Paket AC 1/2 PK',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: transparentColor,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                'Paket AC 1.5 PK',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultCircular),
                color: transparentColor,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Text(
                'Paket AC 2 PK',
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          CardProduct(
            onTap: () {
              Navigator.pushNamed(context, '/product-detail');
            },
            namaProduct: 'Sharp AH-AP5UHL',
            descProduct:
                'AC split low daya listrik 330 W Teknologi Low Wattage',
            hargaProduct: 'Rp. 190.000',
          ),
          CardProduct(
            onTap: () {
              Navigator.pushNamed(context, '/product-detail');
            },
            namaProduct: 'LG H05TN4 New Hercules',
            descProduct:
                'AC split low daya listrik 370 W Teknologi Turbo Cooling',
            hargaProduct: 'Rp. 155.000',
          ),
          CardProduct(
            onTap: () {
              Navigator.pushNamed(context, '/product-detail');
            },
            namaProduct: 'Panasonic CS/CU-LN5WKJ',
            descProduct:
                'AC split low daya listrik 369 W dengan Mode Powerfull',
            hargaProduct: 'Rp. 207.000',
          ),
          CardProduct(
            onTap: () {
              Navigator.pushNamed(context, '/product-detail');
            },
            namaProduct: 'Gree GWC-05C3E',
            descProduct:
                'AC split low daya listrik 389 W Teknologi Pengingat Pintar',
            hargaProduct: 'Rp. 155.000',
          ),
          CardProduct(
            onTap: (){
              Navigator.pushNamed(context, '/product-detail');
            },
            namaProduct: 'Panasonic CS/CU-LN5WKJ',
            descProduct:
                'AC split low daya listrik 369 W dengan Mode Powerfull',
            hargaProduct: 'Rp. 207.000',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 100),
        child: ClipPath(
          clipper: WaveClip(),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg-header.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: defaultMargin,
                ),
                Text(
                  'Cari AC kebutuhanmu',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                buildCategories()
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        children: [
          content(),
        ],
      ),
    );
  }
}

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    final lowPoint = size.height - 30;
    final highPoint = size.height - 40;

    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
