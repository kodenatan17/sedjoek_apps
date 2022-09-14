import 'package:flutter/material.dart';
import 'package:sedjoek_apps/theme.dart';

class ProductModelDummy {
  final String name;
  final String image;
  final String description;
  final Color bgColor;
  final Color titleColor;

  ProductModelDummy({
    required this.name,
    required this.image,
    required this.description,
    required this.bgColor,
    required this.titleColor,
  });
}

List products = [
  ProductModelDummy(
    name: 'Sharp',
    image: 'assets/images/display-products.png',
    description: 'AC dengan daya listrik sebesar 330 Watt. Suhu AC dapat diatur pada remote control hingga 14 derajat untuk rasa sejuk yang maksimal. Teknologi Low Wattage cocok untuk rumah dengan daya listrik terbatas',
    bgColor: sharpColor,
    titleColor: sharpColor,
  ),
  ProductModelDummy(
    name: 'Panasonic',
    image: 'assets/images/display-products.png',
    description: 'AC dengan daya listrik sebesar 389 Watt dan tegangan rendah hingga 160 volt. Ruangan jadi lebih cepat dingin dengan mode POWERFUL tanpa perlu khawatir ketika tegangan listrik terjadi sewaktu-waktu.',
    bgColor: panasonicColor,
    titleColor: panasonicColor,
  ),
  ProductModelDummy(
    name: 'Gree',
    image: 'assets/images/display-products.png',
    description: 'AC dengan daya listrik sebesar 389 Watt dan tegangan rendah hingga 160 volt. Ruangan jadi lebih cepat dingin dengan mode POWERFUL tanpa perlu khawatir ketika tegangan listrik terjadi sewaktu-waktu.',
    bgColor: greeCyanColor,
    titleColor: greeCyanColor,
  ),
  ProductModelDummy(
    name: 'LG',
    image: 'assets/images/display-products.png',
    description: 'AC dengan daya listrik sebesar 370 Watt yang menggunakan teknologi Turbo Cooling dan Auto Swing sehingga membuat ruangan lebih cepat dingin merata. Teknologi Turbo Cooling ruangan dingin merata',
    bgColor: lgColor,
    titleColor: lgColor,
  ),
];
