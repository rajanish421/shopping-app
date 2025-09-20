import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/screens/HomePage.dart';
import 'package:shoping_app/screens/Login.dart';
import 'package:shoping_app/screens/SingUp_page.dart';
import 'package:shoping_app/screens/bottomnavigation.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            // checking connection
            if(snapshot.connectionState == ConnectionState.active){
              // connection state is active
              print('State is Active');
              if(snapshot.hasData){
                // User exist
                print('User Exist');

                return BottomNavigation();
              }else if(snapshot.hasError){
                // Something Error
                print('Something Error Occured');
                return Center(child: Text(snapshot.toString()),);
              }
            }
            // waiting
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(),);
            }
            print("LOging");
            return LoginPage();
          },
      ),
    );
  }
}
