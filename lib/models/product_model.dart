import 'package:sedjoek_apps/models/brand_model.dart';
import 'package:sedjoek_apps/models/category_model.dart';
import 'package:sedjoek_apps/models/gallery_model.dart';
import 'package:sedjoek_apps/models/stock_model.dart';

class ProductModel {
  int? id;
  String? name;
  double? price;
  String? description;
  String? tags;
  late CategoryModel category;
  late BrandModel brand;
  late StockModel stock;
  late List<GalleryModel> galleries;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tags,
    required this.category,
    required this.stock,
    required this.brand,
    required this.galleries,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    brand = BrandModel.fromJson(json['brand']);
    stock = StockModel.fromJson(json['stock']);
    category = CategoryModel.fromJson(json['category']);
    galleries = json['galleries']
        .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category.toJson(),
      'galleries': galleries.map((gallery) => gallery.toJson()).toList(),
    };
  }
}
