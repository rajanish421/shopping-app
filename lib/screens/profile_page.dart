import 'package:flutter/material.dart';
import 'package:shoping_app/firebase_services.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Card(
              shape: CircleBorder(),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/images/Image.jpg'),fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Name",style: TextStyle(color: Colors.grey),),
                subtitle: Text("Rajanish Singh"),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("Email",style: TextStyle(color: Colors.grey),),
                subtitle: Text("rajanish@gmail.com"),
              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("LogOut",style: TextStyle(),),
                trailing: Icon(Icons.arrow_forward_ios),

              ),
            ),
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Delete Account",style: TextStyle(),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
              ElevatedButton(
                  onPressed: (){
                    FirebaseServices().signOut();
                  },
                  child: Text("Login Out"),
              )
          ],
        ),
      ),
    );
  }
}
