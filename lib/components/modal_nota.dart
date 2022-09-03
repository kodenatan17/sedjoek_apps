import 'package:flutter/material.dart';

import '../theme.dart';

class ModalNota extends StatelessWidget {
  const ModalNota({
    Key? key,
    required this.codeTransaction,
    required this.nameCustomer,
    required this.hpCustomer,
    required this.addressCustomer,
    required this.totalPrice,
    required this.shippingPrice,
    required this.additionalPrice,
    required this.productsType,
    required this.productsName,
    required this.periodeTransaction,
    required this.startTransaction,
    required this.endTransaction,
    required this.couponMode,
    required this.statusTransaction,
  }) : super(key: key);

  final String codeTransaction;
  final String nameCustomer;
  final String hpCustomer;
  final String addressCustomer;
  final String totalPrice;
  final String shippingPrice;
  final String additionalPrice;
  final String productsType;
  final String productsName;
  final String periodeTransaction;
  final String startTransaction;
  final String endTransaction;
  final String couponMode;
  final String statusTransaction;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text("NOTA PEMESANAN"),
      ),
      body: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nota Pesanan Digital",
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        codeTransaction,
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        startTransaction,
                        style: secondaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/nota-process.png",
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Data Pesanan Digital",
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        nameCustomer,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        hpCustomer,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/whatsapp.png",
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tipe AC Pesanan",
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        productsType,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Text(
                        productsName,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        endTransaction,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/icons/report.png",
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Harga Pesanan',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Shipping Price',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding * 1.5,
                      ),
                      Text(
                        'Additional Price',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding * 1.5,
                      ),
                      Text(
                        'Total Price',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        shippingPrice,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding * 1.5,
                      ),
                      Text(
                        additionalPrice,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding * 1.5,
                      ),
                      Text(
                        totalPrice,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.event_note_rounded,
                            color: primaryColor,
                          ),
                          const SizedBox(
                            width: kDefaultPadding,
                          ),
                          const Text(
                            "Coupon",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        couponMode,
                        style: primaryTextStyle.copyWith(
                          fontStyle: FontStyle.italic,
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: MaterialButton(
                  minWidth: width,
                  onPressed: () {
                    // final pdfFile = await PdfInvoiceApi.generate(invoice);
                    // PdfApi.openFile(pdfFile);
                  },
                  color: primaryColor,
                  child: const Text(
                    "PRINT NOTA PRODUKSI",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
