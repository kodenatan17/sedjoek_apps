import 'dart:io';
import 'dart:js';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:sedjoek_apps/api/pdf_api.dart';
import 'package:sedjoek_apps/models/dummy/bast_model.dart';
import 'package:sedjoek_apps/models/dummy/technition_model.dart';

class PdfBastApi {
  static Future<File> generate(Bast bast) async {
    Uint8List logobytes;
    Uint8List footerbytes;
    final pdf = Document();
    ByteData _footer = await rootBundle.load('assets/images/footer_pdf.png');
    ByteData _bytes = await rootBundle.load('assets/images/header_pdf.png');
    logobytes = _bytes.buffer.asUint8List();
    footerbytes = _footer.buffer.asUint8List();
    pdf.addPage(
      MultiPage(
        build: (context) => [
          buildLogo(bast, logobytes),
          buildTitle(bast),
          SizedBox(height: 2 * PdfPageFormat.cm),
          buildHeader(bast),
          buildBast(bast),
          Divider(),
          buildSignature(bast),
        ],
        footer: (context) => buildFooter(bast, footerbytes),
      ),
    );
    return PdfApi.saveDocument(name: 'my_bast.pdf', pdf: pdf);
  }

  static Widget buildLogo(Bast bast, Uint8List logobytes) {
    return Container(
      child: logobytes != null
          ? pw.Image(pw.MemoryImage(logobytes))
          : pw.Container(),
    );
  }

  static Widget buildTitle(Bast bast) {
    return Container(
      child: Column(
        children: [
          Text(
            'BERITA ACARA SERAH TERIMA PEKERJAAN',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 0.8 * PdfPageFormat.cm),
          Text('(Ref. No : ' + bast.invoice.info.number + ')'),
          SizedBox(height: 0.8 * PdfPageFormat.cm),
          Expanded(
            child: Text(
                'Pada hari ini ${bast.invoice.info.date} , telah dilakukan serah terima pekerjaan oleh pihak-pihak tersebut : '),
          ),
          SizedBox(height: 0.8 * PdfPageFormat.cm),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildPicTechnition(bast.techinition),
              buildPicCustomer(bast.info),
            ],
          ),
        ],
      ),
    );
  }

  static Widget buildPicCustomer(BastInfo info) {
    final titles = <String> [
      'Nama Customer :',
      'No Handphone  :',
      'Alamat        :',
      'Selanjutnya disebut sebagai'
    ];

    final data = <String> [
      info.pic,
      info.handphone,
      info.address,
      'PIHAK KEDUA'
    ];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(data.length, (index) {
        final title = titles[index];
        final value = data[index];
        return buildText(title: title, value : value, width: 200);
      }),
    );
  }

  static Widget buildPicTechnition(Technition technition) {
    final titles = <String> [
      'Nama PIC       :',
      'Jabatan        :',
      'Alamat         :',
      'No Handphone   :',
      'Selanjutnya disebut sebagai',
    ];

    final data = <String> [
      technition.name,
      technition.jobs,
      technition.address,
      technition.handphone,
      'PIHAK PERTAMA'
    ];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(data.length, (index) {
        final title = titles[index];
        final value = data[index];
        return buildText(title: title, value : value, width: 200);
      }),
    );
  }

  static Widget buildHeader(Bast bast) {
    return Container(

    );
  }

  static Widget buildBast(Bast bast) {
    return Container();
  }

  static Widget buildSignature(Bast bast) {
    return Container(
      
    );
  }

  static Widget buildFooter(Bast bast, Uint8List footerbytes) {
    return Container(
      child: footerbytes != null
          ? pw.Image(pw.MemoryImage(footerbytes))
          : pw.Container(),
    );
  }

  static buildText({  
    required String title,
    required String value,
    double width = double.infinity,
    TextStyle? titleStyle,
    bool unite = false,
  }) {
    final style = titleStyle ?? TextStyle(fontWeight: FontWeight.bold);

    return Container(
      width: width,
      child: Row(
        children: [
          Expanded(child: Text(title, style: style)),
          Text(value, style: unite ? style : null),
        ],
      ),
    );
  }
}
