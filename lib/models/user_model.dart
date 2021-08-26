class UserModels {
  int? id;
  String? name;
  String? email;
  String? username;
  String? photoProfil;
  String? token;

  UserModels({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.photoProfil,
    required this.token,
  });

  UserModels.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    photoProfil = json['profile_photo_url'];
    token = json['token'];
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': photoProfil,
      'token': token,
    };
  }
}

