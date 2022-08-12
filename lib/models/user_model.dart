class UserModel {
  int? id;
  String? name;
  String? email;
  String? username;
  String? profilePhotoPath;
  String? phone;
  String? token;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.profilePhotoPath,
    required this.email,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePhotoPath = json['profile_photo_path'];
    token = json['token'];
  }

  Map<String, dynamic> toJson(){
    return{
      'id' : id,
      'name' : name,
      'email' : email,
      'username' : username,
      'profile_photo_path' : profilePhotoPath,
      'token' : token,
    };
  }
}
