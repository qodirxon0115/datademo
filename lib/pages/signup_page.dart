import 'package:datademo/pages/home_page.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String id = "signup_page";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                Center(
                  child: Text("Create",
                    style: TextStyle(
                        color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Text("Account",
                    style: TextStyle(
                        color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            const SizedBox(height: 70,),

            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                hintText: "User Name", hintStyle: TextStyle(color: Colors.grey),
                icon: Icon(Icons.person_outline_outlined, color: Colors.grey,),
              ),
            ),
            Container(height: 1,color: Colors.white,),
            const SizedBox(height: 15,),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "E-Mail",hintStyle: TextStyle(color: Colors.grey),
                icon: Icon(Icons.email_outlined, color: Colors.grey,),
              ),
            ),
            Container(height: 1,color: Colors.white,),
            const SizedBox(height: 15,),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                hintText: "Phone Number", hintStyle: TextStyle(color: Colors.grey),
                icon: Icon(Icons.phone_outlined, color: Colors.grey,),
              ),
            ),
            Container(height: 1,color: Colors.white,),
            const SizedBox(height: 15,),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "Password",hintStyle: TextStyle(color: Colors.grey),
                icon: Icon(Icons.lock_open_outlined, color: Colors.grey,),
              ),
            ),
            Container(height: 1,color: Colors.white,),
            const SizedBox(height: 55,),
            Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  onPressed:(){},
                  child: const Icon(
                    Icons.arrow_forward_outlined,color: Colors.white,),
                )
            ),
            const SizedBox(height: 60,),

            Container(
              margin: const EdgeInsets.only(left: 15, right: 15,),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("Already have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),

                  const SizedBox(width: 5,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, HomePage.id);
                    },
                    child: const Text("SIGN IN", style: TextStyle(color: Colors.blue, fontSize: 16,),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
