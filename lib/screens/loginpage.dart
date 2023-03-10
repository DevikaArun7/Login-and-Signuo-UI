import 'package:flutter/material.dart';
import 'package:login_and_signup_ui/screens/firstpage.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>const firstpage()),);}, icon: const Icon(Icons.arrow_back_ios)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text("Login",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children:  [
                  const Center(child: Text("Welcome back ! Login with your credentials")),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Email"),
                        TextFormField(keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        ),

                      ],
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Password"),
                        TextFormField(keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        ),

                      ],
                    ),
                  ),
                  Padding(
        padding:  const EdgeInsets.symmetric(vertical: 33),
        child:  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)
                    )
                  ),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>const LoginPage()),);},
                 child: const Text("Login"))
      ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: const [
           Text("Don't have an account?"),
           Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold),),
         ],
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