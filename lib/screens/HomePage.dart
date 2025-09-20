import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Categories_page.dart';
import 'Detail_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hey, Rajanish Singh",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("Good Morning", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/Image.jpg'),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Products",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      prefixIcon: Icon(Icons.search,color: Colors.black,),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Categories",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right:10.0),
                    child: Text("see all",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),),
                  )
                ],
              ),
              Container(
                // alignment: Alignment.bottomCenter,
                height: 200,
                child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage(),));
                          },
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Spacer(flex: 2,),
                                 Container(
                                   height: 100,
                                   width: 120,
                                   child: Image.asset(
                                     "assets/images/Image.jpg",
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                                Spacer(flex: 1,),
                                Icon(Icons.arrow_forward_sharp,size: 40,),
                                Spacer(flex: 2,)
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("All Products",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right:10.0),
                    child: Text("see all",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),),
                  )
                ],
              ),
              Container(
                // alignment: Alignment.bottomCenter,
                height: 250,
                child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(),));
                        },
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Spacer(flex: 2,),
                              Container(
                                height: 130,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/Image.jpg"),fit: BoxFit.cover),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0).copyWith(left: 15),
                                child: Text("Random Watch",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  children: [
                                    Text("\$300",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.red),),
                                    Spacer(),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      child: Icon(Icons.add,color: Colors.white,),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
