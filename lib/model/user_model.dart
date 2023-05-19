

class User{
   String username="";
   String email="";
   String phone="";
   String password="";

  User({required this.username, required this.password});
  User.from({required this.username, required this.password,required this.email, required this.phone});

  User.fromJson(Map<String, dynamic>json)
  :username = json["username"],
  email = json["email"],
  phone = json["phone"],
  password = json["password"];

  Map<String, dynamic> toJson() =>{
    "username":username,
    "email":email,
    "phone":phone,
    "password":password,
  };
}