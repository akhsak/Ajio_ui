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
      appBar: AppBar(elevation: 0,
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
              childAspectRatio: 2/1.2,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(20),
                
                color: const Color.fromARGB(255, 235, 235, 235),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [   
                    Text(
                      Name[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                         fontSize: MediaQuery.of(context).size.width >
                                        600
                                    ? 20
                                    : MediaQuery.of(context).size.width > 300
                                        ? 14
                                        : MediaQuery.of(context).size.width >
                                                250
                                            ? 8
                                            : 2,
                              ),
                      ),
                  
         
                    Image.asset(
                     images[index],
                      width: 50,
                       height: MediaQuery.of(context).size.width > 600
                              ? 200
                              : MediaQuery.of(context).size.width > 400
                                  ? 100
                                  : MediaQuery.of(context).size.width > 200
                                      ? 50
                                      : 0,
                    ),
                  ],
                ),
              );
            },
          itemCount: images.length,
          ),
           SizedBox(height: 5,),
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
                 Image.asset('assets/ajio_luxe.jpg',width: 410,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}
