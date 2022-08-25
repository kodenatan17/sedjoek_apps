import 'package:sedjoek_apps/models/user_model.dart';

class UserDetailModel{
  int? id;
  String? nameFull;
  String? ktp;
  String? ktpAddress;
  String? statusResidence;
  String? profession;
  String? closestFamilyPhone;
  String? closestFamilyName;
  String? closestFamilyRelation;
  late UserModel users;
  String? emergencySurename;
  String? emergencyAddress;
  String? imageKtp;
  String? imageKk;

  UserDetailModel({
    required this.id,
    required this.nameFull,
    required this.ktpAddress,
    required this.statusResidence,
    required this.profession,
    required this.closestFamilyPhone,
    required this.closestFamilyName,
    required this.closestFamilyRelation,
    required this.users,
    required this.emergencySurename,
    required this.emergencyAddress,
    required this.imageKtp,
    required this.imageKk,
  });

  UserDetailModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    nameFull = json['name_full'];
    ktpAddress = json['ktp_address'];
    statusResidence = json['status_residence'];
    profession = json['profession'];
    closestFamilyPhone = json['closest_family_phone'];
    closestFamilyName = json['closest_family_name'];
    closestFamilyRelation = json['closest_family_relation'];
    users = UserModel.fromJson(json['users_id']);
    emergencySurename = json['emergency_surename'];
    emergencyAddress = json['emergency_address'];
    imageKtp = json['image_ktp'];
    imageKk = json['image_kk'];
  }

  Map<String, dynamic> toJson(){
    return {
      'id' : id,
      'name_full' : nameFull,
      'ktpAddress' : ktpAddress,
      'status_residence' : statusResidence,
      'profession' : profession,
      'closest_family_phone' : closestFamilyPhone,
      'closest_family_name' : closestFamilyName,
      'closest_family_relation' : closestFamilyRelation,
      'users_id' : users.toJson(),
      'emergency_surename' : emergencySurename,
      'emergencY_address' : emergencyAddress,
      'image_ktp' : imageKtp,
      'image_kk' : imageKk,
    };
  }
}