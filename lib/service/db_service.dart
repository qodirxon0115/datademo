
import 'package:datademo/model/user_model.dart';
import 'package:hive/hive.dart';

class HiveDB{
  static var box = Hive.box("pdp_online");

  static void store(String user) async{
    box.put("12", user);
    print("malumot saqlandi");
  }

  static load() {
    var h=box.get("12");
    return h;
  }
  static void storeUser(User user) async{
    box.put("user", user.toJson());
    print("malumot saqlandi");
  }

  static Future<User> loadUser() async{
    var user = User.fromJson(box.get("user"));
    return user;
  }

  void removeUser(){
    box.delete("user");
  }

}