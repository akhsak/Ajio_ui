import 'package:flutter/material.dart';

class Categoriespage extends StatelessWidget {
   Categoriespage({super.key});

  final List<String>images= [
   'assets/kids.jpg',
   'assets/kids.jpg',
   'assets/sale.jpg',
   'assets/jewellery.jpg',
   'assets/lifestyle.jpg',
  'assets/footwear.jpg',
  'assets/home.jpg',
  'assets/lingeries.jpg',
  'assets/home.jpg',
  'assets/makeuup.jpg'
];
  final List<String>Name=[
   'Men',
   'Women',
   'kids',
   'jewellery',
   'homie&lifestyle',
   'Beauty by Tira',
   'Accessories',
   'Lingeries',
   'Gifting Guid',
   'Brand Verse'
];
  @override
  Widget build(BuildContext context) {  
    return  Scaffold(
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
        body: Stack(
         children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(20),
                
                color: const Color.fromARGB(255, 235, 235, 235),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                         images[index],
                          width: 90,
                          height: 90,
                        ),
                        SizedBox(width: 20),
                        Text(
                          Name[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          itemCount: images.length,
          ),
           SizedBox(height: 10,),
          Positioned(
            bottom: 0, 
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white, 
               padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Image.asset('assets/ajio_luxe.jpg',width: 390,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}
