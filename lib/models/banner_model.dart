import 'package:sedjoek_apps/models/brand_model.dart';

class BannerModel {
  int? id;
  String? urlImages;

  BannerModel({
    required this.id,
    required this.urlImages,
  });

  BannerModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    urlImages = json['urlImages'];
  }

  Map<String, dynamic> toJson(){
    return {
      'id' : id,
      'urlImages' : urlImages,
    };
  }
}