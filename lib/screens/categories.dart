import 'package:flutter/material.dart';

class Categoriespage extends StatelessWidget {
  const Categoriespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop By Category'),
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){},
           icon:Icon(Icons.favorite_outline_sharp),color: Colors.black,),
           IconButton(onPressed: (){}, 
           icon: Icon(Icons.shopping_bag_outlined),color: Colors.black,)
        ],
        
      ),
    );
  }
}
