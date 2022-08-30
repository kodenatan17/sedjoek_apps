import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/nota_modal.dart';
import 'package:sedjoek_apps/theme.dart';

class CardList extends StatelessWidget {
  final String customerList;
  final String addressList;
  final String statusList;
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

  const CardList({
    Key? key,
    required this.addressList,
    required this.customerList,
    required this.statusList,
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotaModal(
              codeTransaction: codeTransaction,
              nameCustomer: nameCustomer,
              hpCustomer: hpCustomer,
              addressCustomer: addressCustomer,
              totalPrice: totalPrice,
              shippingPrice: shippingPrice,
              additionalPrice: additionalPrice,
              productsType: productsType,
              productsName: productsName,
              periodeTransaction: periodeTransaction,
              startTransaction: startTransaction,
              endTransaction: endTransaction,
              couponMode: couponMode,
              statusTransaction: statusTransaction,
            ),
          ),
        );
      },
      child: Container(
        height: 120,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          child: ClipPath(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: statusList == 'Survey'
                        ? cardSourvey
                        : statusList == 'Installation'
                            ? cardInstallation
                            : primaryColor,
                    width: 10,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    customerList,
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Spacer(),
                  Text(
                    addressList,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    statusList,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  kDefaultCircular,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
