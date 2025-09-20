import 'package:flutter/material.dart';
import 'package:shoping_app/screens/Login.dart';

import '../firebase_services.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController  = TextEditingController();
  TextEditingController emailController  = TextEditingController();
  TextEditingController passwordController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade200,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center  ,
              children: [
                Text('Welcome to \n Our store',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(height: 20,),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                SizedBox(height: 30,),
                Card(
                  child: MaterialButton(
                    onPressed: (){
                      FirebaseServices().singUp(emailController.text.trim(), passwordController.text.trim());
                    },
                    child: Text("Sign Up"),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You have already account!"),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                      },
                        child: Text("Login",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
