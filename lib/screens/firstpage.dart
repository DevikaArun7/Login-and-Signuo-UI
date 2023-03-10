

import 'package:flutter/material.dart';
import 'package:login_and_signup_ui/screens/loginpage.dart';
import 'package:login_and_signup_ui/screens/signup.dart';


class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:  [
            Column(
              children:  [
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Center(
                    child: Text("Hello There!",style: TextStyle(fontSize: 33,fontWeight:FontWeight.bold),
                    ),
                  ),
                ),
                const Text("Automatic identify verification which enable you to ",),
                const Text("verify your identity"),
                const Image(image: AssetImage("lib/assets/image/firstpage_image1.jpg"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)
                    )
                  ),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));}, 
                child: const Text("Login"),
                ),
                const SizedBox(height:23 ,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)
                    )
                  ),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>const SignUpPage()),);},
                 child: const Text("SignUp"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}