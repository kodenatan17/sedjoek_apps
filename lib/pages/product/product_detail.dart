import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';
import 'package:sedjoek_apps/widgets/buttons.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  List imgList = [
    'assets/icons/ico_product.png',
    'assets/icons/ico_product.png',
    'assets/icons/ico_product.png'
  ];

  int currentIndex = 0;
  bool isWishList = false;

  Future<void> showSuccessDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => Container(
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        child: AlertDialog(
          backgroundColor: backgroundColor6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultMargin),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/icons/ico_success.png',
                  width: 100,
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Text(
                  'Item berhasil ditambahkan',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding * 2,
                ),
                CustomFilledButton(
                  title: 'View My Cart',
                  onPressed: () {},
                  radius: kDefaultCircular,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 15 : 4,
        height: 5,
        margin: const EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultCircular),
          color: currentIndex == index ? primaryColor : secondaryTextColor,
        ),
      );
    }

    Widget header() {
      int index = -1;

      return Stack(
        children: [
          CarouselSlider(
            items: imgList
                .map(
                  (e) => Image.asset(
                    e,
                    width: MediaQuery.of(context).size.width,
                    height: 330,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child:
          // ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.chevron_left,
                        color: primaryColor,
                      ),
                    ),
                    Icon(
                      Icons.shopping_bag,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 180,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((e) {
                  index++;
                  return indicator(index);
                }).toList(),
              ),
            ],
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: backgroundColor1,
        ),
        child: Column(
          children: [
            //HEADER
            Container(
              margin: const EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sharp AH-AP5UHL',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Spilt AC',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWishList = !isWishList;
                      });
                      if (isWishList) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: successColor,
                            content: Text(
                              'Has been added to the wishlist',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: alertColor,
                            content: Text(
                              'Has been removed to the wishlist',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }
                    },
                    child: Image.asset(
                      isWishList
                          ? 'assets/icons/ico_love.png'
                          : 'assets/icons/ico_love_grey.png',
                      width: 46,
                      height: 46,
                    ),
                  ),
                ],
              ),
            ),
            //price
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: kDefaultMargin * 2,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(kDefaultCircular),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Biaya sewa bulanan',
                    style: whiteTextStyle.copyWith(
                        fontWeight: medium, fontSize: 14),
                  ),
                  Text(
                    'Rp. 190.000',
                    style: whiteTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 16),
                  ),
                ],
              ),
            ),
            //desc
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Text(
                    'AC Split Low Watt Plasmacluster Sayonara Panas J60 Series Thai AC.Dengan daya listrik sebesar 330 Watt\nSuhu AC dapat diatur pada remote control hingga 14 derajat untuk rasa sejuk yang maksimal. Teknologi Low Wattage cocok untuk rumah dengan daya listrik terbatas',
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget cartMessage() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin * .3,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/chat-detail');
              },
              child: Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/ico_chat.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                height: 54,
                child: TextButton(
                  onPressed: () {
                    showSuccessDialog();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: yellowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kDefaultCircular),
                    ),
                  ),
                  child: Text(
                    'Sewa',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
      bottomNavigationBar: cartMessage(),
    );
  }
}
