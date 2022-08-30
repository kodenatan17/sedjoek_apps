import 'package:flutter/material.dart';
import 'package:sedjoek_apps/components/technition/card_list.dart';
import 'package:sedjoek_apps/theme.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> allDataPelanggan = [
      {
        'addressList': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'customerList': 'Ferry Natan Wibisono',
        'statusList': 'Survey',
        'codeTransaction': 'NA001/01/09/22',
        'nameCustomer': 'Ferry Natan Wibisono',
        'hpCustomer': '082114155395',
        'addressCustomer': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'totalPrice': 'Rp.190.000',
        'shippingPrice': 'Rp.0',
        'additionalPrice': 'Rp. 50.000',
        'productsType': '0.75 PK',
        'productsName': 'SHARP AP56UL',
        'periodeTransaction': '6 Month',
        'startTransaction': '01 Sept 2022',
        'endTransaction': '01 Feb 2022',
        'couponMode': 'none',
        'statusTransaction': 'Survey'
      },
      {
        'addressList': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'customerList': 'Ferry Natan Wibisono',
        'statusList': 'Survey',
        'codeTransaction': 'NA001/01/09/22',
        'nameCustomer': 'Ferry Natan Wibisono',
        'hpCustomer': '082114155395',
        'addressCustomer': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'totalPrice': 'Rp.190.000',
        'shippingPrice': 'Rp.0',
        'additionalPrice': 'Rp. 50.000',
        'productsType': '0.75 PK',
        'productsName': 'SHARP AP56UL',
        'periodeTransaction': '6 Month',
        'startTransaction': '01 Sept 2022',
        'endTransaction': '01 Feb 2022',
        'couponMode': 'none',
        'statusTransaction': 'Survey'
      },
      {
        'addressList': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'customerList': 'Ferry Natan Wibisono',
        'statusList': 'Survey',
        'codeTransaction': 'NA001/01/09/22',
        'nameCustomer': 'Ferry Natan Wibisono',
        'hpCustomer': '082114155395',
        'addressCustomer': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'totalPrice': 'Rp.190.000',
        'shippingPrice': 'Rp.0',
        'additionalPrice': 'Rp. 50.000',
        'productsType': '0.75 PK',
        'productsName': 'SHARP AP56UL',
        'periodeTransaction': '6 Month',
        'startTransaction': '01 Sept 2022',
        'endTransaction': '01 Feb 2022',
        'couponMode': 'none',
        'statusTransaction': 'Survey'
      },
      {
        'addressList': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'customerList': 'Ferry Natan Wibisono',
        'statusList': 'Survey',
        'codeTransaction': 'NA001/01/09/22',
        'nameCustomer': 'Ferry Natan Wibisono',
        'hpCustomer': '082114155395',
        'addressCustomer': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'totalPrice': 'Rp.190.000',
        'shippingPrice': 'Rp.0',
        'additionalPrice': 'Rp. 50.000',
        'productsType': '0.75 PK',
        'productsName': 'SHARP AP56UL',
        'periodeTransaction': '6 Month',
        'startTransaction': '01 Sept 2022',
        'endTransaction': '01 Feb 2022',
        'couponMode': 'none',
        'statusTransaction': 'Survey'
      },
      {
        'addressList': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'customerList': 'Ferry Natan Wibisono',
        'statusList': 'Survey',
        'codeTransaction': 'NA001/01/09/22',
        'nameCustomer': 'Ferry Natan Wibisono',
        'hpCustomer': '082114155395',
        'addressCustomer': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'totalPrice': 'Rp.190.000',
        'shippingPrice': 'Rp.0',
        'additionalPrice': 'Rp. 50.000',
        'productsType': '0.75 PK',
        'productsName': 'SHARP AP56UL',
        'periodeTransaction': '6 Month',
        'startTransaction': '01 Sept 2022',
        'endTransaction': '01 Feb 2022',
        'couponMode': 'none',
        'statusTransaction': 'Survey'
      },
      {
        'addressList': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'customerList': 'Ferry Natan Wibisono',
        'statusList': 'Survey',
        'codeTransaction': 'NA001/01/09/22',
        'nameCustomer': 'Ferry Natan Wibisono',
        'hpCustomer': '082114155395',
        'addressCustomer': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'totalPrice': 'Rp.190.000',
        'shippingPrice': 'Rp.0',
        'additionalPrice': 'Rp. 50.000',
        'productsType': '0.75 PK',
        'productsName': 'SHARP AP56UL',
        'periodeTransaction': '6 Month',
        'startTransaction': '01 Sept 2022',
        'endTransaction': '01 Feb 2022',
        'couponMode': 'none',
        'statusTransaction': 'Survey'
      },
      {
        'addressList': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'customerList': 'Ferry Natan Wibisono',
        'statusList': 'Survey',
        'codeTransaction': 'NA001/01/09/22',
        'nameCustomer': 'Ferry Natan Wibisono',
        'hpCustomer': '082114155395',
        'addressCustomer': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'totalPrice': 'Rp.190.000',
        'shippingPrice': 'Rp.0',
        'additionalPrice': 'Rp. 50.000',
        'productsType': '0.75 PK',
        'productsName': 'SHARP AP56UL',
        'periodeTransaction': '6 Month',
        'startTransaction': '01 Sept 2022',
        'endTransaction': '01 Feb 2022',
        'couponMode': 'none',
        'statusTransaction': 'Survey'
      },
      {
        'addressList': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'customerList': 'Ferry Natan Wibisono',
        'statusList': 'Survey',
        'codeTransaction': 'NA001/01/09/22',
        'nameCustomer': 'Ferry Natan Wibisono',
        'hpCustomer': '082114155395',
        'addressCustomer': 'Kp Lokomotif RT 05 RW 05 No 40 Kaliabang Tengah',
        'totalPrice': 'Rp.190.000',
        'shippingPrice': 'Rp.0',
        'additionalPrice': 'Rp. 50.000',
        'productsType': '0.75 PK',
        'productsName': 'SHARP AP56UL',
        'periodeTransaction': '6 Month',
        'startTransaction': '01 Sept 2022',
        'endTransaction': '01 Feb 2022',
        'couponMode': 'none',
        'statusTransaction': 'Survey'
      },
    ];
    return ListView.separated(
      padding: const EdgeInsets.all(kDefaultPadding),
      itemCount: allDataPelanggan.length,
      itemBuilder: (BuildContext context, index) {
        return CardList(
          addressList: '${allDataPelanggan[index]["addressList"]}',
          customerList: '${allDataPelanggan[index]["customerList"]}',
          statusList: '${allDataPelanggan[index]["statusList"]}',
          codeTransaction: '${allDataPelanggan[index]["codeTransaction"]}',
          nameCustomer: '${allDataPelanggan[index]["nameCustomer"]}',
          hpCustomer: '${allDataPelanggan[index]["hpCustomer"]}',
          addressCustomer: '${allDataPelanggan[index]["addressCustomer"]}',
          totalPrice: '${allDataPelanggan[index]["totalPrice"]}',
          shippingPrice: '${allDataPelanggan[index]["shippingPrice"]}',
          additionalPrice: '${allDataPelanggan[index]["additionalPrice"]}',
          productsType: '${allDataPelanggan[index]["productsType"]}',
          productsName: '${allDataPelanggan[index]["productsName"]}',
          periodeTransaction:
              '${allDataPelanggan[index]["periodeTransaction"]}',
          startTransaction: '${allDataPelanggan[index]["startTransaction"]}',
          endTransaction: '${allDataPelanggan[index]["endTransaction"]}',
          couponMode: '${allDataPelanggan[index]["couponMode"]}',
          statusTransaction: '${allDataPelanggan[index]["statusTransaction"]}',
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
