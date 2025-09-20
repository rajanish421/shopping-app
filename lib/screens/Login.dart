import 'package:flutter/material.dart';
import 'package:shoping_app/firebase_services.dart';
import 'package:shoping_app/screens/SingUp_page.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        FirebaseServices().signIn(emailController.text.trim(), passwordController.text.trim(),context);
                      },
                    child: Text("Login"),
                  ),
                ),
               SizedBox(height: 30,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Don't have account!"),
                   SizedBox(width: 10,),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));

                     },
                       child: Text("SingUp",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
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
