import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Cart Page"),
      ),
      body: ListView.builder(
        itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 5),
                // width: MediaQuery.of(context).size.width*9,
                height: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/Image.jpg'),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Apple Watch",style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text("\$200",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
                        Text("item : 3",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),

                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            );
          },
      ),
    );
  }
}
