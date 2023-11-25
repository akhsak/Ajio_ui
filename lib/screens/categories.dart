
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});

  final List<String> images = [
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
  final List<String> names = [
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
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Shop By Category'),
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline_sharp),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined),
            color: Colors.black,
          )
        ],
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 1.2,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(20),
                color: const Color.fromARGB(255, 235, 235, 235),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenSize.width > 600
                            ? 20
                            : screenSize.width > 300
                                ? 14
                                : screenSize.width > 250
                                    ? 8
                                    : 2,
                      ),
                    ),
                    Image.asset(
                      images[index],
                      width: screenSize.width > 600
                          ? 200
                          : screenSize.width > 400
                              ? 100
                              : screenSize.width > 200
                                  ? 50
                                  : 0,
                      height: screenSize.width > 600
                          ? 200
                          : screenSize.width > 400
                              ? 100
                              : screenSize.width > 200
                                  ? 50
                                  : 0,
                    ),
                  ],
                ),
              );
            },
            itemCount: images.length,
          ),
          SizedBox(
            height: 5,
          ),
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
                  Image.asset(
                    'assets/ajio_luxe.jpg',
                  height: 100,
                    width: MediaQuery.of(context).size.width*0.8,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
