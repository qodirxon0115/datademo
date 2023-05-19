import 'package:datademo/model/user_model.dart';
import 'package:datademo/pages/signup_page.dart';
import 'package:flutter/material.dart';
import '../service/db_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void _doSign() async{
    String username = usernameController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    var user = User(username: username, password: password);

    if(username != null && password != null){
      HiveDB.storeUser(user);

      final  user2 = await HiveDB.loadUser();

      print(user2.username);
      print(user2.password);
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 60,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/image_2.png"),
                      )
                  ),
                ),
                const SizedBox(height: 15,),
                const Text("Welcome Back!",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),),
                const SizedBox(height: 5,),
                const Text("Sign in to continue",
                  style: TextStyle(color: Colors.grey, fontSize: 16),),
              ],
            ),
            const SizedBox(height: 15,),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                hintText: "User Name", hintStyle: TextStyle(color: Colors.grey),
                icon: Icon(Icons.person_outline_outlined, color: Colors.grey,),
              ),
            ),
            Container(height: 1,color: Colors.white,),
            const SizedBox(height: 5,),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "Password",hintStyle: TextStyle(color: Colors.grey),
                icon: Icon(Icons.lock_open_outlined, color: Colors.grey,),
              ),
            ),
            Container(height: 1,color: Colors.white,),

            const SizedBox(height: 30,),
            const Center(
              child: Text("Forget Password?", style: TextStyle(color: Colors.grey,),),
            ),
            const SizedBox(height: 30,),
            Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: GestureDetector(
                  onTap: _doSign,
                  child: const Icon(
                    Icons.arrow_forward_outlined,color: Colors.white,),
                )
            ),
            const SizedBox(height: 30),

            Container(
              margin: const EdgeInsets.only(left: 15, right: 15,),
              height: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),

                  const SizedBox(width: 5,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, SignUp.id);
                    },
                    child: const Text("SIGN UP", style: TextStyle(color: Colors.blue, fontSize: 16,),),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
