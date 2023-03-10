import 'package:flutter/material.dart';
import 'package:login_and_signup_ui/screens/firstpage.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child:  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>const firstpage()),);}, icon:const Icon(Icons.arrow_back_ios))
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                ),
                
              ],
            ),
            Column(
              children:  [
                const Center(child: Text("Create an account,it's free")),
                Padding(
                  padding: const EdgeInsets.all(33.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Email"),
                      TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
                    ],
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Password"),
                      TextField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
                    ],
                  ),
                ),
                  Padding(
                  padding: EdgeInsets.all(33.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text("Confirm Password"),
                      const TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
      Padding(
        padding:  const EdgeInsets.symmetric(vertical: 33),
        child:  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: const Size(400, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)
                    )
                  ),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>const SignUpPage()),);},
                 child: const Text("SignUp"))
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Already have an account?"),
          Text("Login",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        
        ),
      ),
    ),
    );
  
  }
}