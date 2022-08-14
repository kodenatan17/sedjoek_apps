import 'package:sedjoek_apps/models/brand_model.dart';
import 'package:sedjoek_apps/models/category_model.dart';
import 'package:sedjoek_apps/models/gallery_model.dart';

class ProductModel {
  int? id;
  String? name;
  double? price;
  String? description;
  String? tags;
  CategoryModel? category;
  BrandModel? brand;
  DateTime? createdAt;
  DateTime? updateAt;
  List<GalleryModel>? galleries;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tags,
    required this.category,
    required this.brand,
    required this.createdAt,
    required this.updateAt,
    required this.galleries,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tags = json['tags'];
    category = CategoryModel.fromJson(json['category']);
    brand = BrandModel.fromJson(json['brand']);
    galleries = json['galleries']
        .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
        .toList();
    createdAt = DateTime.parse(json['created_at']);
    updateAt = DateTime.parse(json['updateAt']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tags': tags,
      'category': category!.toJson(),
      'brand': brand!.toJson(),
      'createdAt': createdAt.toString(),
      'updateAt': updateAt.toString(),
    };
  }
}
