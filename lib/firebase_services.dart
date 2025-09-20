import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/screens/bottomnavigation.dart';
class FirebaseServices{
     // methods for signUp
  void singUp(String email,String password)async{
    print('object');
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("successfull");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
  // methods for login

void signIn(String email,String password,BuildContext context)async{
  try{
    UserCredential credential =  await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    print("successfully");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigation(),));
  }catch(e){
    print(e.toString());
  }
}

// SignOut

void signOut()async{
    await FirebaseAuth.instance.signOut();
}

}