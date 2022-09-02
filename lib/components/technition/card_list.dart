import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sedjoek_apps/components/modal_nota.dart';
import 'package:sedjoek_apps/components/technition/modal_finish.dart';
import 'package:sedjoek_apps/components/technition/modal_installation.dart';
import 'package:sedjoek_apps/components/technition/modal_sourvey.dart';
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
            builder: (context) => ModalNota(
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
      child: Slidable(
        startActionPane: ActionPane(
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {

              }),
              icon: Icons.dataset,
              backgroundColor: cardInfo,
            ),
            SlidableAction(
              onPressed: ((context) {
                //onaction
              }),
              icon: Icons.message,
              backgroundColor: cardMaterial,
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              onPressed: ((context) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => statusList == 'Survey'
                        ? const ModalSourvey()
                        : statusList == 'Installation'
                            ? const ModalInstallation()
                            : const ModalFinish(),
                  ),
                );
              }),
              icon: Icons.location_on,
              backgroundColor: cardInfo,
            ),
          ],
        ),
        child: Container(
          height: 100,
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
      ),
    );
  }
}
