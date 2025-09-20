import 'package:flutter/material.dart';
class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0).copyWith(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon:Icon(Icons.arrow_back_ios_new),
                ),
                Expanded(
                  child:GridView.builder(
                    itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        childAspectRatio:0.5,
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: GridTile(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 200,
                                          width: 150,
                                          child: Image.asset('assets/images/Image.jpg',fit: BoxFit.cover,),
                                        ),
                                      ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0).copyWith(left: 15),
                                    child: Text("Random Watch",style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30
                                    ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Row(
                                      children: [
                                        Text("\$300",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
                                        Spacer(),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          child: Icon(Icons.add,color: Colors.white,),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                  ) ,
                ),
              ],
            ),
          ),
      ),
    );
  }
}
