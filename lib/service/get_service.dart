
import 'package:get_storage/get_storage.dart';

import '../model/user_model.dart';

class GetService{
  static var box = GetStorage();

  static void storeUser(User user) async{
    box.write("user", user.toJson());
  }
}