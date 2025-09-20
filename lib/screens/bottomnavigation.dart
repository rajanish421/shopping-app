import 'package:flutter/material.dart';
import 'package:shoping_app/screens/profile_page.dart';

import 'Cart_page.dart';
import 'HomePage.dart';
import 'Order_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  PageController pageController = PageController();
  List<Widget> items = [
    HomePage(),
    CartPage(),
    OrderPage(),
    ProfilePage(),
  ];
  int currentIndex = 0;
  void ontapped(int index){
    setState(() {
      currentIndex = index;
      pageController.jumpToPage(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade200,
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: ""),
          ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        onTap:ontapped ,
        currentIndex: currentIndex,
      ),
      body: PageView(
        controller: pageController,
        children: items,
      ),
    );
  }
}
