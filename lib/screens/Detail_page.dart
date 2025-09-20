import 'package:flutter/material.dart';

import 'Cart_page.dart';
class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0).copyWith(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_outlined,size: 40,)),
                Container(
                  height: MediaQuery.of(context).size.height*0.54,
                  width: MediaQuery.of(context).size.width*0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                    image: DecorationImage(image: AssetImage('assets/images/Image.jpg',),fit: BoxFit.cover)
                  ),
                ),
               Spacer(),
                Row(
                  children: [
                    Text("Apple Watch",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Spacer(),
                    Text("\$200",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                  ],
                ),
                Spacer(),
                Text("Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("While you sleep. Apple watch also tracks "
                    "metrics like blood oxygen ,heart rate,time asleepdkjhsjdfsdjf"
                    "sdfjksdfknskdhjkdhsfkdhskdjsfkjhsdkfjhsdkfhjjkdhsfjashdoifjas oisjdfj soj",style: TextStyle(
                  fontSize: 16
                ),),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.95,
                    height: 46,
                    child:Text("Add to Cart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.95,
                    height: 46,
                    child:Text("Buy Now",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}
